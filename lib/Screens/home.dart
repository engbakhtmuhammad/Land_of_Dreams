import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primaryColor = Color(0xFF242f3c);
    Color backgroundColor = Color(0xFF13181e);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: double.infinity,
              decoration: BoxDecoration(color: backgroundColor),
            ),
            Container(
              height: size.height * .4,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/home.png'), fit: BoxFit.fill)),
            ),
            Positioned(
              top: size.height * .38,
              //right: size.width*.1,
              left: size.width * .12,
              child: searchField(context),
            ),
            Positioned(
                top: size.height * .55,
                left: 25,
                child: Text(
                  "Trending Catagories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: size.height*.6,
                left: 25,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      customCard(size, primaryColor, Colors.green, Icon(Icons.hiking), 'Hiking'),
                      customCard(size, primaryColor, Colors.amber, Icon(Icons.delivery_dining_outlined), 'Delivery'),
                      customCard(size, primaryColor, Colors.blue, Icon(Icons.ac_unit), 'Snow'),
                      customCard(size, primaryColor, Colors.green, Icon(Icons.hiking), 'Hiking'),
                      customCard(size, primaryColor, Colors.green, Icon(Icons.hiking), 'Hiking')
                    ],
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Row(children: [
              Container(
                color: backgroundColor,
                child: Container(
                  height: 65,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home_rounded,size: 40,color: Colors.green[800],),
                      Icon(Icons.beach_access_rounded,size: 35,color: Colors.grey),
                      Icon(Icons.favorite_border_rounded,size: 35,color: Colors.grey),
                      Icon(Icons.person_outline,size: 35,color: Colors.grey),
                    ],
                  ),
                ),
              )
            ]),
    );
  }

  searchField(context) {
    Size size = MediaQuery.of(context).size;
    var searchController;
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10),
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: size.width,
      height: size.height * .08,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFF242f3c), Color(0xFF13181e)]),
        color: Color(0xFF242f3c),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .1),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'search for trail...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
          ),
          CircleAvatar(
            radius: size.height * .08,
            backgroundColor: Colors.amber,
            child: IconButton(
              icon: Icon(Icons.search),
              //onPressed open voice keyboard
              onPressed: () {},
              color: Colors.black,
              iconSize: 20,
            ),
          ),
          CircleAvatar(
            radius: size.height * .05,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
  customCard(size,primaryColor,Color color, Icon icon, text){
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
                        height: size.height*.25,
                        width: size.width*.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: primaryColor
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: size.width*.1,top: 20),
                              child: CircleAvatar(
                                backgroundColor: color,
                                radius: 20,
                                child: Text('8',style: TextStyle(color: Colors.black),),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 10, top: 30),
                              child: ListTile(title: IconButton(onPressed: (){}, icon: icon,iconSize: 40,color: Colors.white),
                              subtitle: Text(text,style: TextStyle(color: Colors.white)),),
                            )
                          ],
                        ),
                      ),
    );
  }
}
