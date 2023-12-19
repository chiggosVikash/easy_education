import 'dart:async';

import 'package:easy_education/utils/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../widgets/timer_w.dart';
import '../../../data/models/enquiry_model.dart';
import '../../providers/get_enquries_p.dart';

class EnquiryW extends ConsumerStatefulWidget{
  final List<EnquiryModel> _enquiries;
  final int _fetchLimit;
  const EnquiryW({super.key,required List<EnquiryModel> enquiries,
    required int fetchLimit
  })
      :
        _enquiries = enquiries,
        _fetchLimit = fetchLimit
  ;

  @override
  ConsumerState<EnquiryW> createState() => _EnquiryWState();
}

class _EnquiryWState extends ConsumerState<EnquiryW> {

  late final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future((){
      _controller.addListener(() {
        _listenScrolling();
      });
    });

  }

  void _listenScrolling(){
    if(_controller.position.pixels >= _controller.position.maxScrollExtent){
      ref.read(getEnquiryProvider.notifier).getEnquiriesLazy(limit: widget._fetchLimit, lastId: widget._enquiries.last.id);
    }
  }




  @override
  void dispose() {
    _controller.removeListener(() {_listenScrolling(); });
    _controller.dispose();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      shrinkWrap: true,
        itemCount: widget._enquiries.length,
        itemBuilder: (context,index){
      return Card(
        child: Dismissible(
          direction: DismissDirection.endToStart,

          confirmDismiss: (status)async{
            if(status == DismissDirection.endToStart){
              return await _showConfirmationDialogue();
            }
            return false;
          },
          key: ValueKey(widget._enquiries[index].id.toString()),
          child: ListTile(
            title: Text(widget._enquiries[index].studentDetails.fullName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget._enquiries[index].studentDetails.currentClass}, - ${widget._enquiries[index].studentDetails.fatherName}"),
                Text("Date - ${widget._enquiries[index].createdDate.formattedDate}")
              ],
            ),
            isThreeLine: true,

            trailing: FilledButton.tonal(onPressed: (){}, child: const Text("Admission")),
          ),
        ),
      );
    });

  }


  Future<bool> _showConfirmationDialogue()async{
    bool isConfirmed = false;
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text("Delete Enquiry"),
        content: const Text("Are you sure you want to delete this enquiry?"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("No")),
          TextButton(onPressed: (){
            isConfirmed = true;
            Navigator.pop(context);
          }, child: const Text("Yes")),
        ],
      );
    });
    return isConfirmed;
  }

}
