import 'package:flutter/material.dart';

import 'book_home.dart';

class BooksProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Home2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.93,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.83,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Editora Azul",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            "GALERIA",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF64B5F6),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "TOTAL DE LIVROS",
                                    style: kTitleStyle,
                                  ),
                                  Text(
                                    "FAVORITOS",
                                    style: kTitleStyle,
                                  ),
                                  Text(
                                    "AVALIAÇÕES",
                                    style: kTitleStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "25",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "20",
                                    style: kSubtitleStyle,
                                  ),
                                  Text(
                                    "15",
                                    style: kSubtitleStyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                            ),
                            alignment: Alignment.bottomCenter,
                            child: BookSection(
                              heading: "Estante",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/Amber.jfif",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final kTitleStyle = TextStyle(
  fontSize: 20,
  color: Colors.grey,
  fontWeight: FontWeight.w700,
);

final kSubtitleStyle = TextStyle(
  fontSize: 26,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);
