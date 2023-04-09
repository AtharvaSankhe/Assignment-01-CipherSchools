import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'home.dart';

bool isSwitch = false;


void main() {
  runApp(
    MaterialApp(
      // home: Cipher(),
      home: Home(),
    ),
  );
}

class Cipher extends StatefulWidget {
  const Cipher({Key? key}) : super(key: key);

  @override
  State<Cipher> createState() => _CipherState();
}

class _CipherState extends State<Cipher> {
  var option ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111318),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            backgroundColor: Color(0xFF252c36),
            leading: Image.asset('images/lead.png'),
            titleSpacing: 0,
            title: Text('CipherSchools'),
            actions: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.compass,size: 20,),
                  SizedBox(width: 3,),
                  Text('Browse'),
                  Switch(value: isSwitch,
                      onChanged: (value){
                    setState(() {
                      isSwitch = value;
                    });
                  },
                    activeTrackColor: Color(0xFF514b4f),
                    thumbColor: MaterialStateProperty.all(Colors.white),
                  ),


                  Icon(FontAwesomeIcons.bell,size: 20,),
                  SizedBox(width: 7,),
                  Icon(FontAwesomeIcons.magnifyingGlass,size: 20,),
                  SizedBox(width: 3,),
                ],
              ),
            ],


          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/mainbg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: 220,
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Full-stack',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text('Development',
                  style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text('using MERN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),

                ),
                SizedBox(height: 7,),
                Container(
                  decoration: BoxDecoration(
                      backgroundBlendMode: BlendMode.overlay,
                    color: Color(0xFF343c5b),
                    borderRadius: BorderRadius.circular(9),

                  ),
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                  child: Text('Web Development',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [

                  ],
                ),
                TextButton(onPressed: (){},
                  child: Text('Watch',style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFFf3912e),

                    ),
                  ),

                ),
              ],

            ),
          ),
          SizedBox(height: 10,),
          Container(
            // color: Colors.pinkAccent,
            margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
            height:70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                    'Recommended Courses',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Container(

                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFF252c36),
                  ),
                  child: DropdownButton(
                    underline: Container(),
                    iconEnabledColor: Colors.white,
                    dropdownColor: Color(0xFF252c36),
                    value: 'one',
                      items: [
                        DropdownMenuItem(
                            child: Text('Popular',
                            style: TextStyle(
                              color: Color(0xFFe1e4ec),
                            ),
                            ),
                          value: 'one',
                        ),
                        DropdownMenuItem(
                          child: Text('Newest'),
                          value: 'two',
                        ),

                  ],
                      onChanged: (value){
                        setState(() {
                          option=value;
                        });
                      }),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  flex:1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF252c36),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/crack.png',),
                          Container(
                            decoration: BoxDecoration(
                              color:Color(0xff464136),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text('Languify',style: TextStyle(color: Color(
                                0xfff3831a),),),
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(top: 10),
                          ),
                          Padding(
                              padding:EdgeInsets.all(8),
                              child: Text('FREE IELTS/TOEFL...',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text('Al generated feedback...',style: TextStyle(color: Color(0xFFa0a4af),),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text('Test duration: 30mins/ ...',style: TextStyle(color: Color(0xFFa0a4af),),),
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 5,),
                              Image.asset('images/lang.png',width: 47,),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Languify',style: TextStyle(color: Colors.white,fontSize: 15),),
                                  Text('express & excel',style: TextStyle(color: Color(0xFFa0a4af),),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
                SizedBox(width: 14),
                Expanded(
                  flex:1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF252c36),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('images/web.png',),
                        Container(
                          decoration: BoxDecoration(
                            color:Color(0xff464136),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text('Web Development',style: TextStyle(color: Color(
                              0xfff3831a),),),
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.only(top: 10),
                        ),
                        Padding(
                            padding:EdgeInsets.all(8),
                            child: Text('Web Development',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('No. of videos: 138',style: TextStyle(color: Color(0xFFa0a4af),),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Course time: 21.8 hours',style: TextStyle(color: Color(0xFFa0a4af),),),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Image.asset('images/hars.png',width: 47,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Harshit Vashisth',style: TextStyle(color: Colors.white,fontSize: 15),),
                                Text('Instructor',style: TextStyle(color: Color(0xFFa0a4af),),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 5,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color:Color(0xFF151821),
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
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return Home();}));
                 },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.house,color: Colors.white,size: 20,),
                      SizedBox(height: 5,),
                      Text('Home',style: TextStyle(color: Colors.white,fontSize: 12),),
                    ],
                  ),
                ),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.book,color: Color(0xFFfa912d),size: 20,),
                    SizedBox(height: 5,),
                    Text('Courses',style: TextStyle(color: Color(0xFFfa912d),fontSize: 12),),
                  ],
                ),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.compass,color: Colors.white,size: 20,),
                    SizedBox(height: 5,),
                    Text('Trending',style: TextStyle(color: Colors.white,fontSize: 12),),
                  ],
                ),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.user,color: Colors.white,size: 20,),
                    SizedBox(height: 5,),
                    Text('My Profile',style: TextStyle(color: Colors.white,fontSize: 12),),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}




