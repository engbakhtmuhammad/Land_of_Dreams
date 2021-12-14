import 'package:flutter/material.dart';

import 'Home.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          body: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/wellcome.png",
                      ),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,),
                    child: Text(
                      "Working with you to conserve the land while there is still time",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                      padding:  EdgeInsets.only(
                          left:30,right: 30,top: 10,bottom: size.height*.04),
                      child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              )),
                          child: Text(
                          "Start",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                        ),)),
                ],
              )),
        ),
      ],
    );
  }
}
