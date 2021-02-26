import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/models/product.dart';
import 'package:shop/constante.dart';
import 'package:shop/screen/details/components/body.dart';

class DetailsScreen  extends StatelessWidget {
  final Product product;
  DetailsScreen({Key key ,this.product}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color, //each product have the color
      appBar: buildAppBar(context),
      body: Body(),
        
      
      
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
       backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset('assets/icon/back.svg',
          color: Colors.white,
        ),
           onPressed:()=> Navigator.pop(context),
         ),
         actions: <Widget> [
           IconButton(icon: SvgPicture.asset('assets/icon/search.svg'), 
           onPressed:(){}),
           IconButton(icon: SvgPicture.asset('assets/icon/cart.svg'), 
           onPressed: (){}),
           SizedBox(width: kDefaultPadding/2,)
         ],
         
         
         );
  }
}