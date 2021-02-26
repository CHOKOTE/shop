import 'package:flutter/material.dart';
import 'package:shop/constante.dart';
import 'package:shop/models/product.dart';
import './product_title_with_image.dart';
class Body extends StatelessWidget {
  final Product product;
  Body({  Key key,this.product}):super(key: key);
  @override
  Widget build(BuildContext context) {
    //it provide us total height and width
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          SizedBox(
            height: size.height,
            child:Stack(
              children:<Widget>[
                Container(
                  margin: EdgeInsetsDirectional.only(top:size.height*0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(24),
                      topRight:Radius.circular(24)
                    ), 
                    ),
                ),
                ProductTitleWithImage(product: product)
                
             ]
            ) ,
            )
        ]
      ),
    );
  }
}

