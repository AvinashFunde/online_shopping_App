import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'details.dart';

class ProductModel {
  String image;
  String name;
  String price;
  Color color;
  String type;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
    required this.type,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<ProductModel> products = [
  ProductModel(
      image: "assets/images/bag_1.png",
      name: "Office Code",
      price: "@234",
      color: Color(0xFF3B82AB),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_2.png",
      name: "Belt Bag",
      price: "@234",
      color: Color(0xFFD2A884),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_3.png",
      name: "Hand Bag",
      price: "@234",
      color: Color(0xFF989493),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_4.png",
      name: "Old Bag",
      price: "@234",
      color: Color(0xFFE5B399),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_5.png",
      name: "Travel Bag",
      price: "@234",
      color: Color(0xFFFC7882),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_6.png",
      name: "Bagpack Bag",
      price: "@234",
      color: Color(0xFFADADAD),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_6.png",
      name: "Satchel",
      price: "@234",
      color: Color(0xFF3B82AB),
      type: 'handBag'),
  ProductModel(
      image: "assets/images/bag_6.png",
      name: "Clutch",
      price: "@234",
      color: Color(0xFFD2A884),
      type: 'handBag'),
  ProductModel(
    image: "assets/images/a.png",
    color: Color(0xFF000000),
    name: "Diamond Necklace",
    price: "@234",
    type: 'jweklary',
  ),
  ProductModel(
      image: "assets/images/b.png",
      color: Color(0xFFD2A884),
      name: "Gold Bracelet",
      type: 'jweklary',
      price: "@234"),
  ProductModel(
      image: "assets/images/c.png",
      color: Color(0xFF989493),
      name: "Silver Earrings",
      type: 'jweklary',
      price: "@234"),
  ProductModel(
      image: "assets/images/d.png",
      color: Color(0xFFE5B399),
      type: 'jweklary',
      name: "Emerald Ring",
      price: "@234"),
  ProductModel(
      image: "assets/images/e.png",
      color: Color(0xFFE5B399),
      type: 'jweklary',
      name: "Pearl Necklace",
      price: "@234"),
  ProductModel(
      image: "assets/images/f.png",
      color: Color(0xFFADADAD),
      type: 'jweklary',
      name: "Ruby Brooch",
      price: "@234"),
  ProductModel(
      image: "assets/images/g.png",
      color: Color(0xFF3B82AB),
      type: 'jweklary',
      name: "Sapphire Pendant",
      price: "@234"),
  ProductModel(
      image: "assets/images/h.png",
      color: Color(0xFFD2A884),
      type: 'jweklary',
      name: "Rose Gold Anklet",
      price: "@234"),
  ProductModel(
      image: "assets/images/sa.png",
      //yaha se start shooes
      color: Color(0xFF000407),
      type: 'shoe',
      name: "Stellar Stride Sneakerst",
      price: "@500"),
  ProductModel(
      image: "assets/images/sb.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "FlexFit Runner  ",

      price: "@500"),
  ProductModel(
      image: "assets/images/sc.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Urban Trekker",

      price: "@500"),
  ProductModel(
      image: "assets/images/sd.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Skywalk Comfort",
      price: "@500"),
  ProductModel(
      image: "assets/images/se.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Zen Sole Sneaker ",

      price: "@500"),
  ProductModel(
      image: "assets/images/sf.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Vogue Walkers ",

      price: "@500"),
  ProductModel(
      image: "assets/images/sg.png",
      //yaha se start shooes
      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Gravity Defyer",

      price: "@500"),
  ProductModel(
      image: "assets/images/sh.png",

      color: Color(0xFFD2A884),
      type: 'shoe',
      name: "Elite Glide Pro",
      price: "@500"),

];

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int currentindex = 0;

  late TabController tabController;

  List<ProductModel> handBags = [];
  List<ProductModel> jweklary = [];
  List<ProductModel> footware = [];

  @override
  void initState() {
    super.initState();
    handBags = products.where((element) => element.type == 'handBag').toList();
    jweklary = products.where((element) => element.type == 'jweklary').toList();
    footware= products.where((element) => element.type == 'shoe').toList();
    tabController = TabController(length: 4, vsync: this);
  }

  Color g = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Route myHomePage(orientation) {
      return PageRouteBuilder(
        pageBuilder: (context, Animation, SecondaryAnimation) => orientation,
        transitionsBuilder: (context, Animation, SecondaryAnimation, child) {
          return
              //   SlideTransition(
              //   position: AlwaysStoppedAnimation(Offset.fromDirection(1),),
              //   child: child,
              // );
              RotationTransition(
            turns: Animation,
            child: child,
            filterQuality: FilterQuality.medium,
          );
        },
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: g,
              ),
              color: g),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: g,
                  size: 30,
                ),
                color: g),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: g,
                  size: 30,
                ),
                color: g),
          ],
          bottom: TabBar(
            //dividerColor: Colors.black,
            // padding: EdgeInsets.all(10),
            dragStartBehavior: DragStartBehavior.start,
            labelPadding: EdgeInsets.all(10),
            labelColor: Colors.black,
            // labelColor: selectedTabColor,
            //  unselectedLabelColor: Colors.cyan,
            controller: tabController,

            tabs: [
              Tab(
                text: "Hand bag",
              ),
              Tab(
                text: "Jewellary",
              ),
              Tab(
                text: "Footware",
              ),
              Tab(
                text: "Dresses",
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TabBarView(
            controller: tabController,
            children: [
              GridView.builder(
                  itemCount: handBags.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 15.0, // Spacing between columns
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 9 / 12 // Spacing between rows
                      ),
                  itemBuilder: (BuildContext, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(
                        //     handbags[index],
                        // ))
                        // );
                        // Navigator.push(context, route)
                        Navigator.of(context)
                            .push(myHomePage(DetailsPage(products[index])));
                      },
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                color: products[index].color,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Image.asset(
                              handBags[index].image,
                              fit: BoxFit.cover,
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            handBags[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          Text(
                            "@234",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  }),
              GridView.builder(
                  itemCount: jweklary.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 15.0, // Spacing between columns
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 9 / 12 // Spacing between rows
                      ),
                  itemBuilder: (BuildContext, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(jweklary[index])));
                      },
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                color: jweklary[index].color,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Image.asset(
                              jweklary[index].image,
                              fit: BoxFit.cover,
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            jweklary[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          Text(
                            jweklary[index].price,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  }),
              GridView.builder(
                  itemCount: footware.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 15.0, // Spacing between columns
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 9 / 12 // Spacing between rows
                  ),
                  itemBuilder: (BuildContext, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(footware[index])));
                      },
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                color: footware[index].color,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Image.asset(
                                  footware[index].image,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            footware[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          Text(
                            footware[index].price,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  }),


            ],
          ),
        ));
  }
}
