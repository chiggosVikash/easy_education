
import 'package:intl/intl.dart';

extension DateFormatExtension on String{
  String get formattedDate{
    try{
      final date = DateTime.parse(this);
      return DateFormat("dd-MMM-yyyy").format(date);
      // return "${date.day}-${date.month}-${date.year}";
    }catch(e){
      return "Format Error";
    }

  }
}