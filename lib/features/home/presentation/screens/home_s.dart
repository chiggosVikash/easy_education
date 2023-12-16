import 'package:easy_education/features/home/presentation/widgets/drawer_menu.dart';
import 'package:easy_education/features/master_setting/presentation/screens/setting_menus_s.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomepageS extends ConsumerStatefulWidget {
  static const routeAddress = "/home";
  const HomepageS({super.key,});


  @override
  ConsumerState<HomepageS> createState() => _HomepageSState();
}

class _HomepageSState extends ConsumerState<HomepageS> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const  DrawerMenu(),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(SettingMenusS.routeAddress);
          }, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
