import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        floatingActionButton: SpeedDial(
          buttonSize: Size(80, 80),
          childrenButtonSize: Size(80, 80),
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.blueGrey,
          overlayOpacity: 0.4,
          spaceBetweenChildren: 12,
          children: [
            SpeedDialChild(
              child: Icon(Icons.add_alarm_sharp),
              label: 'Стационар',
            ),
            SpeedDialChild(
              child: Icon(Icons.medical_information),
              label: 'Инфекционное',
            ),
            SpeedDialChild(
              child: Icon(Icons.medical_services_rounded),
              label: 'Поликлиника',
            ),
          ],
        ),
      ),
    );
  }
}
