
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../services/form_validate_service.dart';
import '../../../../services/form_validate_service_impl.dart';



final allowButtonEnableProvider = NotifierProvider.autoDispose<AllowButtonEnableP,bool>(()=>AllowButtonEnableP());

class AllowButtonEnableP extends AutoDisposeNotifier<bool>{
  final FormValidateService _formValidateService = FormValidateServiceImpl();

  @override
  bool build() {
    return false;
  }

  void allowButtonEnable({required String email}){
    final status = _formValidateService.validateEmail(email);
    if(status == null){
      state = true;
    }
    else{
      state = false;
    }
  }
}

