import 'package:easy_education/features/create_institute/presentation/screens/create_institute_s.dart';
import 'package:easy_education/features/login/presentation/widgets/create_new_institute_button_w.dart';
import 'package:easy_education/features/login/presentation/widgets/login_text_w.dart';
import 'package:easy_education/features/login/presentation/widgets/logo_design_w.dart';
import 'package:easy_education/features/login/presentation/widgets/school_login_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginS extends ConsumerStatefulWidget {
  static const routeAddress = "/login";
  const LoginS({super.key});

  @override
  ConsumerState<LoginS> createState() => _LoginSState();
}

class _LoginSState extends ConsumerState<LoginS> with TickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration:const  Duration(seconds: 3));
    _controller.animateTo(0.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: context.theme.secondaryContainer.withOpacity(.2),
          ),
          const LogoDesignW(),

          Container(
            margin: EdgeInsets.only(top: context.height*.11,),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const LoginTextW(),
                SizedBox(height: context.height*.06,),
                 const SchoolLoginW(),
                CreateNewInstituteButtonW(onPressed: (){
                  Navigator.of(context).pushNamed(CreateInstituteS.routeAddress);
                })


                ],),
            ),),
             ],
      ) ,);
  }
}