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
        primaryColor: Tw.yellow500,
        appBarTheme: AppBarTheme(
          backgroundColor: Tw.blueGray800,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tailwind UI style for flutter'),
      ),
      body: SafeArea(
        child: TwPadding(
          child: TwColumn(<Widget>[
            TwWrap(
              <Widget>[
                'This is the demo of TwWrap Widget'
                    .text
                    .textXl
                    .bold
                    .coolGray700
                    .render(),
                Tw.spacer2.widthBox,
                Text('Item 2 of TwWrap Widget')
                    .text
                    .bodyText1
                    .primaryColor
                    .render(),
              ],
            ).vertical.alignStart.render(),
            TwRow([
              TwText('TwContainer with extension')
                  .bodyText1
                  .indigo500
                  .semiBold
                  .maxLines(1)
                  .ellipsis
                  .render()
                  .container
                  .white
                  .border
                  .borderDp2
                  .borderIndigo500
                  .shadow
                  .rounded
                  .center
                  .px4
                  .py3
                  .render()
                  .expanded(),
              Tw.spacer3.widthBox,
              TwContainer(
                child: Text('Direct TwContainer')
                    .text
                    .bodyText1
                    .indigo500
                    .semiBold
                    .render(),
              ).white.shadow.rounded.center.px4.py3.render().expanded(),
            ]).justifyBetween.alignCenter.render().container.mt4.render(),
          ]).alignStart.justifyCenter.max.render(),
        ).px3.render(),
      ),
    );
  }
}
