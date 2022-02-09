import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChatShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 50),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100],
                child: Container(
                  height: 80.0,
                  color: Colors.grey[200],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
