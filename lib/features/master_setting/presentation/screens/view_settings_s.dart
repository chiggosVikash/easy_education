import 'package:easy_education/features/master_setting/data/models/master_setting_model.dart';
import 'package:easy_education/features/master_setting/presentation/providers/get_settings_provider_g.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/setting_model.dart';
import '../widgets/add_settings_w.dart';
import '../widgets/delete_setting_w.dart';
import '../widgets/setting_tile_w.dart';

class ViewMasterSettingsS extends ConsumerStatefulWidget {
  static const routeAddress = '/viewMasterSettings';
  final SettingModel _setting;
  const ViewMasterSettingsS({super.key, required SettingModel setting})
      : _setting = setting;

  @override
  ConsumerState<ViewMasterSettingsS> createState() => _ViewMasterSettingsState();
}

class _ViewMasterSettingsState extends ConsumerState<ViewMasterSettingsS>
    with SingleTickerProviderStateMixin {
  AnimationController? _slideController;

  @override
  void initState() {
    super.initState();

    /// Asynchronously invalidates the [getSettingsPProvider] and gets the settings for the given name.
    /// Initializes an [_slideController] with a duration of 2 seconds.
    Future(() async {
      ref.invalidate(getSettingsProvider);
      await ref
          .read(getSettingsProvider.notifier)
          .getSettings(widget._setting.name);
      _slideController = AnimationController(
          vsync: this, duration: const Duration(seconds: 2));
    });
  }

  @override
  void dispose() {
    _slideController?.dispose();
    super.dispose();
  }

  /// Displays a modal bottom sheet dialog to add or edit a setting.
  ///
  /// The dialog is built with the provided [BuildContext] and [SettingModel].
  ///
  /// The [BuildContext] is used to set the background color of the dialog
  /// and to get the screen dimensions to set the constraints of the dialog.
  ///
  /// The [SettingModel] is used to populate the dialog with the current setting
  /// values if it is being edited, or to create a new setting if it is being added.
  ///
  /// The dialog is scrollable and takes up 70% of the screen height and the full
  /// width of the screen.
  void _newSettingDialog(
      {required BuildContext context, required SettingModel setting}) {
    showModalBottomSheet(
        backgroundColor: context.theme.background,
        constraints: BoxConstraints.expand(
            height: context.height * .7, width: context.width),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return AddSettings(
            setting: setting,
          );
        });
  }

  /// Displays a modal bottom sheet to delete a [SettingDataModel].
  ///
  /// The [setting] parameter is the [SettingDataModel] to be deleted.
  ///
  /// The bottom sheet is built using the [DeleteSettingWidget] widget.
  ///
  /// The [backgroundColor] parameter sets the background color of the bottom sheet.
  ///
  /// The [constraints] parameter sets the constraints for the bottom sheet.
  ///
  /// The [isScrollControlled] parameter determines whether the bottom sheet can be scrolled.
  ///
  /// The [context] parameter is the [BuildContext] of the widget.
  ///
  /// Returns nothing.
  void _deleteSetting({
    required MasterSettingModel setting,
  }) {
    showModalBottomSheet(
        backgroundColor: context.theme.background,
        constraints: BoxConstraints.expand(
            height: context.height * .3, width: context.width),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return DeleteSettingWidget(
            settingData: setting,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // await ref
        //     .read(getSettingsPProvider.notifier)
        //     .refreshSettings(widget._setting.name);
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: context.theme.surfaceTint.withOpacity(.4),
            icon: const Icon(Icons.add),
            onPressed: () {
              _newSettingDialog(context: context, setting: widget._setting);
            },
            label: Text("New ${widget._setting.name}")),
        appBar: AppBar(
          title: Text(widget._setting.name),
        ),
        body: Consumer(
          builder: (context, ref, child) {
            final settingsRawData = ref.watch(getSettingsProvider);
            return settingsRawData.when(
                data: (settings) {
                  if (settings.isEmpty) {
                    return const Center(
                      child: Text("No settings found"),
                    );
                  }
                  return Stack(
                    children: [
                      Container(
                        color: context.theme.secondaryContainer.withOpacity(.3),
                      ),
                      ListView.builder(
                          itemCount: settings.length,
                          itemBuilder: (context, index) {
                            if (_slideController == null) {
                              return const SizedBox();
                            }

                            final leftPosition = Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
                                .animate(CurvedAnimation(
                                    parent: _slideController!,
                                    curve: Interval(
                                        (1 / settings.length) * index, 1,
                                        curve: Curves.fastLinearToSlowEaseIn)));
                            _slideController!.forward();

                            return SlideTransition(
                              position: leftPosition,
                              child: GestureDetector(
                                onLongPress: () {
                                  _deleteSetting(setting: settings[index]);
                                },
                                child: SettingTile(
                                  settingData: settings[index],
                                  index: index,
                                ),
                              ),
                            );
                          }),
                    ],
                  );
                },
                error: (error, st) {
                  return Center(
                    child: Text("Error $error"),
                  );
                },
                loading: () => const Center(
                      child:
                          RepaintBoundary(child: CircularProgressIndicator()),
                    ));
          },
        ),
      ),
    );
  }
}
