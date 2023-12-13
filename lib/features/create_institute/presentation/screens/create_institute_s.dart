import 'package:easy_education/features/create_institute/presentation/widgets/add_institute_details_w.dart';
import 'package:easy_education/features/create_institute/presentation/widgets/add_logo_w.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/image_picker_p.dart';

class CreateInstituteS extends ConsumerStatefulWidget {
  static const routeAddress = "/createSchool";
  const CreateInstituteS({super.key});



  @override
  ConsumerState<CreateInstituteS> createState() => _CreateInstituteSState();
}

class _CreateInstituteSState extends ConsumerState<CreateInstituteS> {
  final double _borderRadius = 40.0;

  /// controllers for the text fields
  final _instituteNameController = TextEditingController();
  final _registrationNoController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _emailController = TextEditingController();
  final _otpController = TextEditingController();
  final _addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _instituteNameController.dispose();
    _registrationNoController.dispose();
    _phoneNoController.dispose();
    _emailController.dispose();
    _otpController.dispose();
    _addressController.dispose();
    super.dispose();
  }



@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text("New School"),),
      body: Form(
        key: _formKey,
        child: Stack(children: [

          Container(color: context.theme.secondaryContainer.withOpacity(.3),),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(_borderRadius)),
              color: Theme.of(context).canvasColor
            ),
            margin: EdgeInsets.only(top: context.height*.08,right: context.width*.02,left: context.width*.02),
            child: Stack(children: [

              Positioned(
                right: (context.width-(context.height*.07))/2.2,
                top: (context.height-(context.height*.2))/2.4,
                child: Opacity(opacity: .1,
                  child: Icon(Icons.add,size: context.height*.06,color: context.theme.secondary,))),

              Positioned(
                left: (context.width-(context.height*.12))/2.5,
                top: (context.height-(context.height*.2))/3,
                child: Opacity(opacity: .25,
                 child: Icon(Icons.school_outlined,size: context.height*.12,color: context.theme.secondaryContainer,))),

              ListView(children: [
                AddInstituteDetailsW(otpController: _otpController,
                  emailController: _emailController,
                  addressController: _addressController,
                  phoneNoController: _phoneNoController,
                  registrationNoController: _registrationNoController,
                  instituteNameController: _instituteNameController
                )
              ],)
              // TextFormField()
            ],),),

            Positioned(
              top: context.height*.01,
              left: (context.width-(context.width*.28))/2,
              child:  Consumer(builder: (context, ref, child) {
                final image = ref.watch(imagePickerProvider);
                return image.when(data: (data){
                  return AddLogoW(
                    imageBytes: data,
                    onTap: (){
                      ref.read(imagePickerProvider.notifier).pickImage();
                    },child:  LayoutBuilder(
                      builder: (context,constraints) {
                        return Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                          Icon(Icons.add,size: constraints.biggest.height*.2,color: context.theme.secondary,),
                          Text("Add Logo",style: GoogleFonts.aBeeZee(
                              color: context.theme.outlineVariant,
                              fontSize: ((constraints.biggest.height+constraints.biggest.width)*context.aspectRatio)*.15
                          ),)
                        ],);
                      }
                  ),);
                }, error: (e,st)=> AddLogoW(
                    child: const Center(child: Text("Error")),
                    onTap: (){
                  ref.read(imagePickerProvider.notifier).pickImage();
                }) ,
                    loading: ()=> const AddLogoW(onTap: null,
                    child: Center(child: RepaintBoundary(child: CircularProgressIndicator()))));

                },))

        ],),
      ),);
  }
}