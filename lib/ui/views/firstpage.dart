import 'package:flutter/material.dart';
import 'package:hospital/core/viewmodels/hospitaldata.dart';
import 'package:hospital/ui/widgets/carddesign.dart';
import 'package:hospital/ui/widgets/mainpageShimmer.dart';
import 'package:provider/provider.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  void initState() {
    Provider.of<hospitaldata>(context, listen: false).getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<hospitaldata>(builder: (context, model, child) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    color: Colors.lightBlueAccent,
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              Text(
                                'Hospital',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car,
                          color: Colors.lightBlueAccent[700],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "NEAR BY AMULANCE",
                          style: TextStyle(color: Colors.lightBlueAccent[700]),
                        )
                      ],
                    ),
                  ),
                  model.loading
                      ? ChatShimmer()
                      : Container(
                          color: Colors.white,
                          child: ListView.builder(
                              itemCount: model.hospitalData.datas.length,
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return CardDesign(
                                  hour: model.hospitalData.datas[index].hours,
                                  imgurl: model.hospitalData.datas[index].image,
                                  location:
                                      model.hospitalData.datas[index].location,
                                  name: model.hospitalData.datas[index].name,
                                  phonenumber:
                                      model.hospitalData.datas[index].phone,
                                  website:
                                      model.hospitalData.datas[index].website,
                                );
                              }),
                        )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
