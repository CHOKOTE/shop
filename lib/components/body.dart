import 'package:flutter/material.dart';
import 'package:shop/constante.dart';
import 'package:shop/screen/home/components/categories.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screen/home/components/item_card.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          
          padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
          child: Text(
              'woman',
               style: Theme.of(context).textTheme.headline5.copyWith(fontWeight:FontWeight.bold),

             ),
          ),
          Categories(),
          Expanded(
            child:Padding(
              padding: EdgeInsets.symmetric(horizontal:kDefaultPadding) ,
              child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding
              ),
              itemBuilder: (context,index)=>ItemCard(
                product: products[index],
              ),
            ), 
            )
            
          ),
          
        
      ],
      
    );
  }
}


