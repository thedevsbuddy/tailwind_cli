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
      home: MyHomePage(title: 'Tailwind UI Styles In Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(Tw.spacer2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times: You have pushed the button this many times:',
              ).twText.center.medium.textBase.indigo500.render(),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ).twText.center.medium.textXl5.violet500.render(),
              TextButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                onLongPress: () {
                  setState(() {
                    _counter += 10;
                  });
                },
                child: Text('I am a container').twText.medium.gray100.buttonText(context).render(),
              ).twButton.px6.py3.primary.render(),
              Container(
                child: Text("sdfsf").twText.gray600.textLg.render(),
              ).twContainer.px6.py3.mt5.roundedMd.shadow.white.render(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
