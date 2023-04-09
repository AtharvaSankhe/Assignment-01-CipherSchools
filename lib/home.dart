import 'package:cipher/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: AppBar(
            backgroundColor: Color(0xFFffffff),
            leading: Image.asset('images/lead.png',),
            titleSpacing: 0,
            title: Text('CipherSchools',style: TextStyle(color: Color(0xFF252c36),fontSize: 24,fontWeight: FontWeight.bold),),
            actions: [
              Icon(FontAwesomeIcons.bars,color: Color(0xFF252c36),size: 30,)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 0,),
              Column(
                children: [
                  RichText(text: TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(color: Color(0xFF252c36),fontSize: 39,fontWeight: FontWeight.bold, ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'the',
                          style: TextStyle(color: Color(0xFFed983f),fontSize: 39,fontWeight: FontWeight.bold, ),
                        )
                      ]
                  ),
                  ),
                  RichText(text: TextSpan(
                      text: 'Future ',
                      style: TextStyle(color: Color(0xFFed983f),fontSize: 39,fontWeight: FontWeight.bold,  ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'of Learning!',
                          style: TextStyle(color: Color(0xFF252c36),fontSize: 39,fontWeight: FontWeight.bold, ),
                        )
                      ]
                  ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Start Learning by best creators for',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'absolutely Free |',
                    style: TextStyle(
                      color: Color(0xFFed983f),
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('50+',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Text('Mentors'),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Container(height: 35,width: 1,color: Colors.grey),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Text('4.8/5',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.solidStar,size: 13,color: Color(0xFFf3912e),),
                          Icon(FontAwesomeIcons.solidStar,size: 13,color: Color(0xFFf3912e),),
                          Icon(FontAwesomeIcons.solidStar,size: 13,color: Color(0xFFf3912e),),
                          Icon(FontAwesomeIcons.solidStar,size: 13,color: Color(0xFFf3912e),),
                          Icon(FontAwesomeIcons.solidStarHalfStroke,size: 13,color: Color(0xFFf3912e),),
                          SizedBox(width: 7,),
                          Text('Ratings'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 60,
                width: 290,
                padding: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFFf3912e)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(200, 20)),

                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Starting Learning Now ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),

                        ),
                        Icon(FontAwesomeIcons.arrowRight,color: Colors.white,size: 20,),
                      ],
                    ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color:Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.house,color: Color(0xFFfa912d),size: 20,),
                              SizedBox(height: 5,),
                              Text('Home',style: TextStyle(color: Color(0xFFfa912d),fontSize: 12),),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){return Cipher();}));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.book,color: Color(0xFF353942),size: 20,),
                                SizedBox(height: 5,),
                                Text('Courses',style: TextStyle(color: Color(0xFF353942),fontSize: 12),),
                              ],
                            ),
                          ),Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.compass,color: Color(0xFF353942),size: 20,),
                              SizedBox(height: 5,),
                              Text('Trending',style: TextStyle(color: Color(0xFF353942),fontSize: 12),),
                            ],
                          ),Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.user,color: Color(0xFF353942),size: 20,),
                              SizedBox(height: 5,),
                              Text('My Profile',style: TextStyle(color: Color(0xFF353942),fontSize: 12),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/cou.png'),
                    fit: BoxFit.cover,
                  ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}