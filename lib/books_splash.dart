import 'package:flutter/material.dart';

import 'book_home.dart';

class BooksSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 40,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF64B5F6),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Ler a\nValer",
                        style: TextStyle(
                          height: 1.75,
                          letterSpacing: 2,
                          color: Color(0xFF64B5F6),
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(40),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF64B5F6),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BooksHome(),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
