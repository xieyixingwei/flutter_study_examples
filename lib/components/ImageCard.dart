import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String _image;
  final String _title;
  final String _route;
  final String _subtitle;
  final Function _onpress;

  ImageCard({String image, String title, String subtitle, String route="", Function onpress}) 
    : this._image = image,
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
      width: 260,
      height: this._image != null ? 320 : 200,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.all(5),
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
          this._image != null ? Center(
            child:Container(
              height:160,
              width:200,
              child:Image.asset(this._image, fit: BoxFit.cover),
              )
            ) : SizedBox(height: 20,),
          SizedBox(height: 10,),
          titleWidget,
          SizedBox(height: 10,),
          Text(this._subtitle, style:TextStyle(fontSize:15, fontWeight:FontWeight.w400,),),
        ],
      ),
    );
  }
}
