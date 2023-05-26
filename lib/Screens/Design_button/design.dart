import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({ Key? key }) : super(key: key);

  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  CarouselController _carouselController = new CarouselController();
  int _current = 0;

  List<dynamic> _movies = [
    {
      'title': 'Graphic Design Course',
      'image': 'https://img.freepik.com/psd-gratuit/modele-conception-affiche-style-vie_23-2149068758.jpg?w=2000',
      'description': 'Graphic Design Course'
    },
    {
      'title': 'UI UX course',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWVzwsqq-b3k6O8TsIwNcv2UQFct6HqIN6hla34x8Fj39QyS9plc5fiENoU5Sa-1MPiJI&usqp=CAU',
      'description': 'Font end web development'
    },
    {
      'title': 'Flyers Design bootcamp',
      'image': 'https://graphiste.com/blog/wp-content/uploads/sites/4/2021/10/affiche-fleurs.jpg',
      'description': 'Flyers Design bootcamp'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.network(_movies[_current]['image'], fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                        ]
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,

                items: _movies.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.network(movie['image'], fit: BoxFit.cover),
                                ),
                                SizedBox(height: 20),
                                Text(movie['title'], style:
                                TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                                // rating
                                SizedBox(height: 20),
                                Container(
                                  child: Text(movie['description'], style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey.shade600
                                  ), textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20),
                                AnimatedOpacity(
                                  duration: Duration(milliseconds: 500),
                                  opacity: _current == _movies.indexOf(movie) ? 1.0 : 0.0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              SizedBox(width: 5),
                                              Text('4.5', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.access_time, color: Colors.grey.shade600, size: 20,),
                                              SizedBox(width: 5),
                                              Text('10h', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.2,
                                          child: Row(
                                            children: [
                                              Icon(Icons.play_circle_filled, color: Colors.grey.shade600, size: 20,),
                                              SizedBox(width: 5),
                                              Text('Watch', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}