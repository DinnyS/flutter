import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_compose/widgets/elements/buttons/primaryButoon.dart';
import 'package:flutter_widget_compose/widgets/elements/texts/text_header.dart';

class BgPhoto extends StatelessWidget{
  const BgPhoto ({required this.photo , required this.title , required this.btn});

  final String photo;
  final String title;
  final String btn;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(photo,height: 250,
      width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderText(title: title , color: Colors.white),
                    PrimaryButton(title: btn , color: Colors.white,),
                  ],
                ),
              ),]
            ),
          )
        ],
      ),
    );
  }

} 