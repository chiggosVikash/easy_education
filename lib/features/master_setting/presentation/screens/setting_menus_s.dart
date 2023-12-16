import 'package:easy_education/features/master_setting/presentation/screens/view_settings_s.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/constants/constants.dart';
import '../../../../utils/enums/setting_enum.dart';
import '../../data/models/setting_model.dart';
import '../widgets/settings_w.dart';

/// FILEPATH: /home/viku/flutter_projects/chiggos_mobile/lib/features/master_setting/presentation/screens/setting_menus_s.dart
///
/// This screen displays a list of settings that can be modified by the user.
/// The settings are displayed as tiles with icons and names.
/// When a tile is tapped, the user is taken to a screen where they can modify the corresponding setting.
class SettingMenusS extends ConsumerStatefulWidget {
  static const routeAddress = "/settingMenus";
  const SettingMenusS({super.key});

  @override
  ConsumerState<SettingMenusS> createState() => _SettingMenusState();
}

class _SettingMenusState extends ConsumerState<SettingMenusS>
    with SingleTickerProviderStateMixin {
  late List<SettingModel> _settings;
  late AnimationController _slideController;

  @override
  void initState() {
    super.initState();
    _slideController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _settings = const [
      SettingModel(
          icon: Icon(
            Icons.book,
            color: Constants.primaryColor,
          ),
          name: "Batch",
          settingEnum: SettingEnum.batch),

      SettingModel(
          icon: Icon(
            Icons.menu_book,
            color: Constants.primaryColor,
          ),
          name: "Subject",
          settingEnum: SettingEnum.subject),

      SettingModel(
          icon: Icon(
            Icons.house,
            color: Constants.primaryColor,
          ),
          name: "House",
          settingEnum: SettingEnum.house),

      SettingModel(
          icon: Icon(
            Icons.home_outlined,
            color: Constants.primaryColor,
          ),
          name: "Room",
          settingEnum: SettingEnum.room),

      SettingModel(
          icon: Icon(
            Icons.school,
            color: Constants.primaryColor,
          ),
          name: "Exam",
          settingEnum: SettingEnum.exam),

      SettingModel(
          icon: Icon(
            Icons.monetization_on_outlined,
            color: Constants.primaryColor,
          ),
          name: "Bank A/C",
          settingEnum: SettingEnum.bankAccount),

      SettingModel(
        name: 'Designation',
        icon: Icon(
          Icons.abc,
          color: Constants.primaryColor,
        ),
        settingEnum: SettingEnum.designation,
      ),

      SettingModel(
        name: 'Session',
        icon: Icon(
          Icons.school,
          color: Constants.primaryColor,
        ),
        settingEnum: SettingEnum.session,
      ),

      // SettingModel(name: 'Classes', icon: FaIcon(FontAwesomeIcons.school,color: AppTheme.primaryColor,),
      //   settingEnum: SettingEnum.cls,)
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _slideController.dispose();
  }

  /// Builds the UI for the Master Setting screen.
  ///
  /// Returns a [Scaffold] widget with an [AppBar] and a [ListView] of [SettingsTile] widgets.
  /// Each [SettingsTile] widget displays a setting from the [_settings] list.
  /// The [_slideController] is used to animate the opacity and scale of each [SettingsTile].
  /// When a [SettingsTile] is tapped, it navigates to the [ViewMasterSettingsS] screen with the corresponding setting as an argument.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Master Setting"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: .07,
            child: Icon(
              Icons.settings,
              color: context.theme.secondary,
              size: context.width * .3,
            ),
          ),
          ListView.builder(
              itemCount: _settings.length,
              itemBuilder: (context, index) {
                final opacity =
                    Tween<double>(begin: .1, end: 1).animate(CurvedAnimation(
                  parent: _slideController,
                  curve: Interval((1 / _settings.length) * index, 1,
                      curve: Curves.fastOutSlowIn),
                ));
                _slideController.forward();
                final scale =
                    Tween<double>(begin: .3, end: 1).animate(CurvedAnimation(
                  parent: _slideController,
                  curve: Interval((1 / _settings.length) * index, 1,
                      curve: Curves.fastOutSlowIn),
                ));
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ViewMasterSettingsS.routeAddress,
                          arguments: _settings[index]);
                    },
                    child: SettingsTile(
                        setting: _settings[index],
                        opacity: opacity,
                        scale: scale));
              }),
        ],
      ),
    );
  }
}
