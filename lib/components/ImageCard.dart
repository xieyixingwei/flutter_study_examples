import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String _imagesrc;
  final String _title;
  final String _route;
  final String _subtitle;
  final Function _onpress;

  ImageCard({String imagesrc="", String title, String subtitle, String route="", Function onpress}) 
    : this._imagesrc = imagesrc,
      this._title = title,
      this._subtitle = subtitle,
      this._route = route,
      this._onpress = onpress;

  @override
  Widget build(BuildContext context) {
    var titleWidget =  InkWell(
                    child: Text(
                      this._title,
                      style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      this._route != "" ? Navigator.pushNamed(context, this._route) : this._onpress();
                    },
                  );
    return Container(
      width: 280,
      height: this._imagesrc != "" ? 340 : 200,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        border: Border(
          top:BorderSide(color: Color.fromRGBO(236,236,236, 1), width:1,),
          right:BorderSide(color: Color.fromRGBO(236,236,236,1), width:1,),
          bottom:BorderSide(color: Color.fromRGBO(236,236,236,1), width:1,),
          left:BorderSide(color: Color.fromRGBO(236,236,236,1), width:1,),
          ),
        borderRadius: BorderRadius.all(
          Radius.circular(5)
        ),
        //boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(100,100), blurRadius: 10, spreadRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          this._imagesrc != "" ? Center(
            child:Container(
              height:200,
              width:200,
              child:Image.asset(this._imagesrc, fit: BoxFit.cover),
              )
            ) : SizedBox(height: 20,),
          SizedBox(height: 20,),
          titleWidget,
          SizedBox(height: 20,),
          Text(this._subtitle, style:TextStyle(fontSize:15, fontWeight:FontWeight.w400,),),
        ],
      ),
    );
  }
}
