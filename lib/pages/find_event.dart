import 'package:flutter/material.dart';

class FindEvent extends StatelessWidget {
  const FindEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 241, 247),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('assets/images/party-6.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 239, 241, 247)),
                    shape: BoxShape.circle,
                    color: Colors.yellow[800],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      //-------------------------------------body---------------------------------------//
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Event..',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              makeItem(image: 'assets/images/party-4.jpg', date: '17'),
              makeItem(image: 'assets/images/party-5.jpg', date: '18'),
              makeItem(image: 'assets/images/party-6.jpg', date: '19'),
              makeItem(image: 'assets/images/party-2.jpg', date: '20'),
              makeItem(image: 'assets/images/party-3.jpg', date: '21'),
              makeItem(image: 'assets/images/party-1.jpg', date: '22'),
              makeItem(image: 'assets/images/party-7.jpg', date: '23'),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, date}) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          margin: EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              Text(
                date.toString(),
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SEP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.1),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Bumbershoot 2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        '19:00 PM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
