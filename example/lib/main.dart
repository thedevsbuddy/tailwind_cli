import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Tw.indigo500,
      ),
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tailwind UI style for flutter'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Tw.spacer2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TwContainer(child: Text('I am a TwContainer'))
                        .white
                        .shadow
                        .rounded
                        .square(context.screenWidth * 0.45)
                        .center
                        .px4
                        .py3
                        .render(),
                    SizedBox(width: Tw.spacer),
                    Container(child: Text('I am a Container'.snack()))
                        .twContainer
                        .white
                        .shadow
                        .rounded
                        .square(context.screenWidth * 0.45)
                        .center
                        .px4
                        .py3
                        .render(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
