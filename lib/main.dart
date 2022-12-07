import 'package:flutter/material.dart';
import 'package:flutter_design_study/aurora/aurora_container.dart';
import 'package:flutter_design_study/glassmorphism/button/colored_glass_button.dart';
import 'package:flutter_design_study/glassmorphism/container/colored_glass_container.dart';
import 'package:flutter_design_study/glassmorphism/button/gradient_glass_button.dart';
import 'package:flutter_design_study/glassmorphism/container/gradient_glass_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AuroraContainer(
          shapeParameters: [
            ShapeParameter(
              left: 0,
              top: 100,
              color: Colors.purple,
              width: 800,
              height: 800,
            ),
            ShapeParameter(
              left: 0,
              top: MediaQuery.of(context).size.height,
              color: Colors.purpleAccent,
              width: 800,
              height: 800,
            ),
            ShapeParameter(
              left: MediaQuery.of(context).size.width + 100,
              top: MediaQuery.of(context).size.height / 2 + 100,
              color: Colors.deepPurpleAccent,
              width: 700,
              height: 700,
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ColoredGlassContainer(
                //   color: Colors.white.withOpacity(0.2),
                //   width: 200,
                //   height: 200,
                // ),
                // GradientGlassContainer(
                //   width: 200,
                //   height: 200,
                //   beginColor: Colors.white.withOpacity(0.1),
                //   endColor: Colors.black.withOpacity(0.5),
                //   beginAlignment: Alignment.bottomLeft,
                //   endAlignment: Alignment.topRight,
                //   shadow: true,
                // ),
                ColoredGlassButton(
                  label: Text(
                    'ボタン',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 1.5,
                  ),
                  onPressed: () {
                    debugPrint('ColoredGlassButtonを押下しました。');
                  },
                ),
                GradientGlassButton(
                  beginColor: Colors.white.withOpacity(0.1),
                  endColor: Colors.black.withOpacity(0.5),
                  beginAlignment: Alignment.bottomLeft,
                  endAlignment: Alignment.topRight,
                  label: Text(
                    'Click me !!',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 1.5,
                  ),
                  onPressed: () {
                    debugPrint('GradientGlassButtonを押下しました。');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
