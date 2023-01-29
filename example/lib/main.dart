import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TwAppBuilder(
      builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: TwColors.gray,
            appBarTheme: AppBarTheme(
              backgroundColor: TwColors.blueGray.shade800,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          home: ExamplePage(),
        );
      },
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
      backgroundColor: TwColors.scaffoldBackgroundColor(context),
      body: SafeArea(
        child: TwPadding(
          child: TwColumn(<Widget>[
            TwWrap(
              <Widget>[
                'This is the demo of TwWrap Widget'.isText.textXl.bold.coolGray700.render(),
                TwSizes.spacer2.spaceX,
                Text('Item 2 of TwWrap Widget').isText.bodyText1(context).black.render(),
              ],
            ).vertical.alignStart.render(),
            TwRow([
              TwText('TwContainer with extension')
                  .bodyText1(context)
                  .indigo500
                  .onDarkIndigo200
                  .semiBold
                  .maxLines(1)
                  .truncate
                  .render()
                  .isContainer
                  .gradientToBottom
                  .fromWhite
                  .toCoolGray200
                  .onDarkFromCoolGray500
                  .onDarkToCoolGray900
                  // .border
                  // .borderDp2
                  // .borderIndigo500
                  // .onDarkBorderIndigo900
                  .shadowSm
                  .rounded
                  .center
                  .px4
                  .py3
                  .render()
                  .withInkWell
                  .onTap(() => print('taped'))
                  .onDoubleTap(() => print('double taped'))
                  .render()
                  .expanded(),
              TwSizes.spacer3.spaceX,
              TwContainer(
                child: Text('Direct TwContainer').isText.bodyText1(context).indigo500.onDarkIndigo200.semiBold.render(),
              ).onDarkBlack.white.shadow.rounded.center.px4.py3.render().expanded(),
            ]).justifyBetween.alignCenter.render().isContainer.mt4.render(),
            TwSizes.spacer12.spaceY,
            TextButton(
              child: "I am a tw button".isText.indigo100.semiBold.textSm.render(),
              onPressed: () {},
            ).isButton.indigo400.onDarkIndigo900.px5.rounded.render(),
            TwSizes.spacer12.spaceY,
            TwContainer(child: "I am a container with dark theme color".isText.bodyText1(context).indigo500.onDarkIndigo100.render())
                .square(100)
                .rounded
                .shadow
                .p3
                .white // Will apply by default
                .onDarkCoolGray800 // Will take control while app is in dark theme mode
                .render(),
          ]).alignStart.justifyCenter.max.render(),
        ).px3.render(),
      ),
    );
  }
}
