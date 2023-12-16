
import 'package:easy_education/features/admission/presentation/screens/new_admission_s.dart';
import 'package:easy_education/features/create_institute/presentation/screens/create_institute_s.dart';
import 'package:easy_education/features/enquiry/presentation/screens/enquiry_s.dart';
import 'package:easy_education/features/home/presentation/screens/home_s.dart';
import 'package:easy_education/features/login/presentation/screens/login_s.dart';
import 'package:easy_education/features/master_setting/presentation/screens/setting_menus_s.dart';
import 'package:easy_education/features/master_setting/presentation/screens/view_settings_s.dart';
import 'package:easy_education/routes/custom_route.dart';
import 'package:flutter/material.dart';

import '../features/master_setting/data/models/setting_model.dart';

class ScreenRoute{
  final _offset = const Offset(0, 1);
  Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return CustomRoute(page: const HomepageS(), offset: _offset);
        case HomepageS.routeAddress:
        return CustomRoute(page: const HomepageS(), offset: _offset);
      case LoginS.routeAddress:
        return CustomRoute(page: const LoginS(), offset: _offset);
      case CreateInstituteS.routeAddress:
        return CustomRoute(page: const CreateInstituteS(), offset: _offset);
      case EnquiryS.routeAddress:
        return CustomRoute(page: const EnquiryS(), offset: _offset);
      case NewAdmission.routeAddress:
        return CustomRoute(page: const NewAdmission(), offset: _offset);
      case SettingMenusS.routeAddress:
        return CustomRoute(page: const SettingMenusS(), offset: _offset);
      case ViewMasterSettingsS.routeAddress:
        final setting = settings.arguments as SettingModel;
        return CustomRoute(page: ViewMasterSettingsS(setting: setting,), offset: _offset);
      default:
        return MaterialPageRoute(builder: (context)=> const Scaffold(
          body: Center(child: Text("404"),),
        ));
    }
  }
}