import 'package:countries_app_with_http_dao/Model/country.dart';
import 'package:countries_app_with_http_dao/State%20Management/CountryProvider.dart';
import 'package:countries_app_with_http_dao/View-Model/Services.dart';
import 'package:countries_app_with_http_dao/View/Detail.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {




  @override
  Widget build(BuildContext context) {
    var bilgi = MediaQuery.of(context);
    var genislik = bilgi.size.width;
    var uzunluk = bilgi.size.height;

    return Scaffold(
      backgroundColor: Color(0xFFE1D0D0),
      appBar: AppBar(
        title: Text(
          "ALL EUROPE COUNTRIES",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.people_sharp),
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Consumer<CountryProvider>(
          builder: (context,countryprovider,child){
            if(countryprovider.loading){
              return Center(child: CircularProgressIndicator(),);
            }else if (countryprovider.countries.isEmpty){
              return Center(child: Text('No data available}'));
            }else {
              var _items = countryprovider.countries;
              return ListView.builder(itemCount: _items!.length
                  ,itemBuilder: (context,indeks){
                    return ListTile(
                        title: Text("${_items[indeks].name?.official.toString()}",style: TextStyle(fontWeight: FontWeight.bold),),
                        leading: CircleAvatar(backgroundImage: NetworkImage("${_items[indeks].flags?.png}"),),
                        subtitle: Text("Population: ${_items[indeks].population?.toString() ?? "No population"}"),
                        trailing: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(_items[indeks])));
                        }, icon: Icon(Icons.start))

                    );

                  });
            }

          }
      )


    );
  }
}


