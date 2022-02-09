import 'package:flutter/material.dart';
import 'package:hospital/ui/views/hospitalhome.dart';
import 'package:provider/provider.dart';
import 'core/viewmodels/hospitaldata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => hospitaldata()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HospitalHome(),
          ),
        );
      },
    );
  }
}
