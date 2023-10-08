import 'package:flutter/material.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.cremeColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluishColor)),
                    child: "Add To Cart".text.xl2.make())
                .wh(165, 58)
          ],
        ).p32(),
      ),
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
                      height: 30.0,
                      arcType: VxArcType.convey,
                      edge: VxEdge.top,
                      child: Container(
                        color: Colors.white,
                        width: context.screenWidth,
                        child: Column(
                          children: [
                            catalog.name.text.xl4
                                .color(MyTheme.darkBluishColor)
                                .bold
                                .make(),
                            catalog.desc.text
                                .textStyle(context.captionStyle)
                                .xl
                                .make(),
                            10.heightBox,
                            "magna fringilla urna porttitor rhoncus dolor purus non enim praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel"
                                .text
                                .textStyle(context.captionStyle)
                                .make()
                                .p16(),
                          ],
                        ).py64(),
                      )))
            ],
          )),
    );
  }
}
