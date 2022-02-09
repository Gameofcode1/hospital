import 'package:flutter/material.dart';
import 'package:hospital/ui/shared/textstyle.dart';

class CardDesign extends StatelessWidget {
  final String imgurl;
  final String name;
  final String website;
  final String phonenumber;
  final String location;
  final String hour;

  CardDesign(
      {this.imgurl,
      this.hour,
      this.name,
      this.location,
      this.phonenumber,
      this.website});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 15, bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: NetworkImage(imgurl),
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: CustomTextStyle.mediumBlackText,
                  ),
                  Text(
                    location,
                    style: CustomTextStyle.simpleblace,
                  ),
                  Text(phonenumber, style: CustomTextStyle.simpleblace),
                  Text("openingtime: " + hour,
                      style: CustomTextStyle.simpleblace),
                  Icon(
                    (Icons.maps_ugc_outlined),
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(
              Icons.phone,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
