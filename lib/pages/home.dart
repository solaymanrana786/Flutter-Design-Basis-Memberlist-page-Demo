import 'package:flutter/material.dart';
import 'package:flutter_app_task_basis/pages/second.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Member list"),
        centerTitle: false,
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Company",
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    flex: 1,
                    fit: FlexFit.tight,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        color: Colors.white,
                        child: Icon(
                          Icons.dehaze,
                          color: Colors.cyan,
                        )),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      child: Row(
//                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Container(
                              height: 200,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(

                                  child: Column(
                                    children: [
                                      Flexible(
                                        child: Center(
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10, right: 10),
                                              child: Image.asset(
                                                "images/jpg.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        flex: 1,
                                        fit: FlexFit.tight,
                                      ),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Text("G215"),
                                              Text("GENERAL"),
                                            ],
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            flex: 1,
                            fit: FlexFit.tight,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Container(

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
//                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(height: 10),
                                  Text("2 RA TECHNOLOGY LIMITED",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                  SizedBox(height: 10),
                                  Text("EST. December 2005", textAlign: TextAlign.left,),
                                  SizedBox(height: 60),
                                  FlatButton(
                                    onPressed: () {
                                      /*...*/
                                    },
                                    child: Text(
                                      "View Details",style: TextStyle(
                                      color: Colors.cyan
                                    ),

                                    ),
                                    padding: EdgeInsets.only(left:150)
                                  ),

                                ],
                              ),
                              height: 200,
                              color: Colors.white,

                            ),

                          ),
                        ],
                      ),
                    ),

                  ),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
