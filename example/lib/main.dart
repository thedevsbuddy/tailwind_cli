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
        child: Padding(
          padding: EdgeInsets.all(Tw.spacer2),
          child: Column(
            children: <Widget>[
              TwWrap([
                'Something Special'.text.textLg.render(),
                Tw.spacer2.widthBox,
                Text('Something Awesome').text.bodyText1(context).render(),
              ]).vertical.render(),
              TwRow(
                [
                  Text('TwContainer with extension')
                      .text
                      .bodyText1(context)
                      .indigo500
                      .semiBold
                      .render()
                      .container
                      .white
                      .shadow
                      .rounded
                      .center
                      .px4
                      .py3
                      .render(),
                  SizedBox(width: Tw.spacer3),
                  TwContainer(
                    child: Text('Direct TwContainer').text.bodyText1(context).indigo500.semiBold.render(),
                  ).white.shadow.rounded.center.px4.py3.render(),
                ],
              ).justifyBetween.alignCenter.render().container.mt4.render(),
            ],
          ).column.alignStart.justifyCenter.max.render(),
        ),
      ),
    );
  }
}
