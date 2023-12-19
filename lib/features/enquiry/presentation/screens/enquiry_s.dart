
import 'package:easy_education/features/create_institute/presentation/widgets/create_button_w.dart';
import 'package:easy_education/features/enquiry/presentation/providers/add_enquiry_p.dart';
import 'package:easy_education/features/enquiry/presentation/providers/save_enquiry_p.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/contact_details.dart';
import 'package:easy_education/features/enquiry/presentation/widgets/student_details.dart';
import 'package:easy_education/features/master_setting/presentation/providers/get_settings_provider_g.dart';
import 'package:easy_education/utils/dialogues/saving_dialogue.dart';
import 'package:easy_education/utils/dialogues/successful_dialogue.dart';
import 'package:easy_education/utils/extensions/context_extension.dart';
import 'package:easy_education/widgets/failed_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EnquiryS extends ConsumerStatefulWidget{
  static const routeAddress = "/enquiry";

  const EnquiryS({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EnquirySState();

}

class _EnquirySState extends ConsumerState<EnquiryS>{

  final _nameController = TextEditingController();
  final _presentAddressController = TextEditingController();
  final _permanentAddressController = TextEditingController();
  final _schoolNameController = TextEditingController();
  final _motherNameController = TextEditingController();
  final _fatherNameController = TextEditingController();
  final _fatherOccupationController = TextEditingController();
  final _motherOccupationController = TextEditingController();

  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _fatherPhoneController = TextEditingController();
  final _motherPhoneController = TextEditingController();
  final _fatherEmailController = TextEditingController();
  final _motherEmailController = TextEditingController();



  @override
  void dispose() {
    _nameController.dispose();
    _presentAddressController.dispose();
    _permanentAddressController.dispose();
    _schoolNameController.dispose();

    _motherNameController.dispose();
    _fatherNameController.dispose();
    _fatherOccupationController.dispose();
    _motherOccupationController.dispose();

    _phoneController.dispose();
    _emailController.dispose();
    _fatherPhoneController.dispose();
    _motherPhoneController.dispose();
    _fatherEmailController.dispose();
    _motherEmailController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future((){
      ref.invalidate(addEnquiryProvider);
      ref.read(getSettingsProvider.notifier).getSettings("Batch").then((settings){
        if(settings.isEmpty){
          return;
        }
        ref.read(addEnquiryProvider.notifier).addClassOrBatch(settings.first.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enquiry"),
      ),
      body:  Container(
        color: context.theme.secondaryContainer.withOpacity(.3),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StudentDetails(
                nameController: _nameController,
                presentAddressController: _presentAddressController,
                permanentAddressController: _permanentAddressController,
                schoolNameController: _schoolNameController,
                motherNameController: _motherNameController,
                fatherNameController: _fatherNameController,
                fatherOccupationController: _fatherOccupationController,
                motherOccupationController: _motherOccupationController,
              ),
              SizedBox(height: context.height*.02,),
              ContactDetails(verSpace: .02,
                phoneController: _phoneController,
                emailController: _emailController,
                fatherPhoneController: _fatherPhoneController,
                motherPhoneController: _motherPhoneController,
                fatherEmailController: _fatherEmailController,
                motherEmailController: _motherEmailController,
              ),
              SizedBox(height: context.height*.05,),
              Center(child: CreateButtonW(onPressed: (){
                ref.read(addEnquiryProvider.notifier).assignFields(
                    fullName:_nameController.text,
                    tempAddress: _presentAddressController.text,
                    permAddress: _permanentAddressController.text,
                    currentSchool: _schoolNameController.text,
                    motherName: _motherNameController.text,
                    fatherName: _fatherNameController.text,
                    fatherPhone: _fatherPhoneController.text,
                    motherPhone: _motherPhoneController.text,
                    phone: _phoneController.text,
                    email: _emailController.text,
                    fatherEmail: _fatherEmailController.text,
                    motherEmail: _motherEmailController.text,
                    fatherOccupation: _fatherOccupationController.text,
                    motherOccupation: _motherOccupationController.text,
                );
                _showSavingDialogue();
                ref.read(addEnquiryProvider.notifier).saveEnquiry();

              }, text: "Save")),
              SizedBox(height: context.height*.1,),
            ],
          ),
        ),
      ),
    );
  }

  void _showSavingDialogue(){
    showDialog(context: context, builder: (context){
      return Consumer(builder: (context, ref, child){
        final saveStatus = ref.watch(saveEnquiryProvider);
        return saveStatus.when(
          data: (data) => SuccessfulDialogue(
            buttonText: "Ok",
            content: "Enquiry is created successfully", onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
            _clearControllers();
          },
          ),
          error: (err, stack) => FailedDialogue(message: err.toString(),
          cancelButton: (){
            Navigator.pop(context);
          }, tryAgainButton: () {
              Navigator.pop(context);
              _showSavingDialogue();
              ref.read(addEnquiryProvider.notifier).saveEnquiry();
            },
          ),
          loading: () => const SavingDialogue(title: "Saving Enquiry"),
        );
      });

    });
  }

  void _clearControllers(){
    _nameController.clear();
    _presentAddressController.clear();
    _permanentAddressController.clear();
    _schoolNameController.clear();
    _motherNameController.clear();
    _fatherNameController.clear();
    _fatherOccupationController.clear();
    _motherOccupationController.clear();

    _phoneController.clear();
    _emailController.clear();
    _fatherPhoneController.clear();
    _motherPhoneController.clear();
    _fatherEmailController.clear();
    _motherEmailController.clear();
  }
}