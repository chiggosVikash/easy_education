
import 'package:easy_education/features/create_institute/presentation/screens/create_institute_s.dart';
import 'package:easy_education/features/home/presentation/screens/home_s.dart';
import 'package:easy_education/features/login/presentation/screens/login_s.dart';
import 'package:easy_education/routes/custom_route.dart';
import 'package:flutter/material.dart';

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
      default:
        return MaterialPageRoute(builder: (context)=> const Scaffold(
          body: Center(child: Text("404"),),
        ));
    }
  }
}