import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constante.dart';
import 'package:shop/screen/home/components/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
       
      
    );
  }
 AppBar buildAppBar(BuildContext context){
   return AppBar(
       backgroundColor: Colors.white,
        elevation:0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg',
          //by default you icon color is white
          color:kTextColor
          ),

          onPressed:() {}
          ),
          actions:<Widget> [
            IconButton(
               icon: SvgPicture.asset('assets/icons/search.svg'),
               color: kTextColor,
               onPressed: (){},
            ),
            IconButton(
              onPressed: (){},
             icon: SvgPicture.asset('assets/icons/cart.svg'),
             color: kTextColor,
            ),
            SizedBox(width: kDefaultPadding/2,)
          ],
   );
 }

}

