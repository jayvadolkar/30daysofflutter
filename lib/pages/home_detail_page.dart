// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    onPressed: () {},
                    child: "Add to Cart".text.make())
                .wh(115, 50)
          ],
        ).p32(),
      ),
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 20.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.bold
                        .color(context.accentColor)
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Ipsum est labore sanctus tempor sea eos amet diam no sea. Voluptua at erat dolore et dolores kasd, labore no sit sea diam ea dolor et. Lorem dolores amet magna tempor est dolor amet sit, diam sed kasd magna vero sanctus ipsum sit amet gubergren. Lorem justo vero dolor vero."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
