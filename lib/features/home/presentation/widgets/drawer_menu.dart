import 'package:easy_education/features/admission/presentation/screens/new_admission_s.dart';
import 'package:easy_education/features/enquiry/presentation/screens/enquiry_s.dart';
import 'package:easy_education/features/enquiry/presentation/screens/view_enquiry_s.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(children: [
      const UserAccountsDrawerHeader(accountName: Text("Name"), accountEmail: Text("Email"),),
      Expanded(
        child: ListView(children: [
          ListTile(title: const Text("Enquiry"),
           onTap: (){
            Navigator.pushNamed(context, EnquiryS.routeAddress);

           },),

          ListTile(title: const Text("View-Enquiry"),
            onTap: (){
              Navigator.pushNamed(context, ViewEnquiryS.routeAddress);

            },),
          ListTile(title: const Text("New Admission"),
            onTap: (){
              Navigator.pushNamed(context, NewAdmission.routeAddress);

            },),

        ],),
      )
    ],),);
  }
}
