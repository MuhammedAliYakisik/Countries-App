import 'package:countries_app_with_http_dao/Model/country.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  Country country;


  Detail(this.country);



  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1D0D0),
      appBar: AppBar(
        title: Text(
          "${widget.country.name?.official}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image.network("${widget.country.flags?.png}"),
            Text("${widget.country.name?.official}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Population :${widget.country.population?.toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          ],

        ),
      ),

    );
  }
}
