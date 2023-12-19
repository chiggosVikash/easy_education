
import 'dart:async';

import 'package:flutter/material.dart';

class TimerW extends StatefulWidget{
  final int _seconds;
  const TimerW({super.key,required int seconds}):_seconds = seconds;

  @override
  State<TimerW> createState() => _TimerWState();
}

class _TimerWState extends State<TimerW> {

  late final Timer _timer;
  final _streamController = StreamController<int>();

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(_timer.tick > widget._seconds){
        _timer.cancel();
        _streamController.close();
      }
      _streamController.add(widget._seconds - _timer.tick);

    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      initialData: widget._seconds,
        stream: _streamController.stream,
        builder: (context, snapshot) {
          return Text(snapshot.data.toString());
        }
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _streamController.close();
    super.dispose();
  }

}