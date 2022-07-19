import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'snews.dart';
import 'buissness.dart';
import 'entertainment.dart';
import 'technology.dart';
import 'home.dart';

class Sports extends StatefulWidget {
  Sports({Key? key}) : super(key: key);

  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  // ignore: deprecated_member_use

  bool loading = true;
   ScrollController scroll = ScrollController();
  var articles;

  void getNews() async {
    News news = News();
    await news.getNews();
    articles = news.news;
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  var darktheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      shadowColor: Colors.white,
      brightness: Brightness.dark);

  var lighttheme = ThemeData(
    brightness: Brightness.light,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lighttheme,
      darkTheme: darktheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: "N",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: "ews ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic))),
              RichText(
                text: TextSpan(
                  text: "F",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: "eeds",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic))),
            ],
          ),
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        body: loading
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                height: 80,
                                width: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://images.everydayhealth.com/homepage/health-topics-2.jpg?sfvrsn=757370ae_2",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 142,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black26,
                                      ),
                                      child: Text(
                                        "Health",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Entertainment()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                height: 80,
                                width: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202109/ott-sixteen_nine.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 80,
                                      width: 143,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black26,
                                      ),
                                      child: Text(
                                        "Entertainment",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Business()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 80,
                                width: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://img.freepik.com/free-photo/double-exposure-image-business-profit-growth_31965-3022.jpg?size=626&ext=jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 80,
                                      width: 138,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black26,
                                      ),
                                      child: Text(
                                        "Buissness",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Technology()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 80,
                                width: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://wallpaperaccess.com/full/452063.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 80,
                                      width: 142,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black26,
                                      ),
                                      child: Text(
                                        "Technology",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 80,
                                width: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://mongooseagency.com/files/3415/9620/1413/Return_of_Sports.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 80,
                                      width: 142,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.transparent,
                                      ),
                                      child: Text(
                                        "Sports",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: ListView.builder(
                            shrinkWrap: true,
                            controller: scroll,
                            itemCount: articles.length,
                            itemBuilder: (context, index) {
                              return BlogTile(
                                  imageurl: articles[index].urltoimage,
                                  title: articles[index].title,
                                  desc: articles[index].description,
                                  url: articles[index].url,
                                  );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageurl, title, desc, url;

  BlogTile({required this.imageurl, required this.title, required this.desc, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              launch(url);
            },
            child: ClipRRect(
              child: CachedNetworkImage(imageUrl:imageurl),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Divider(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 15,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Divider(
            height: 15,
          ),
        ],
      ),
    );
  }
}
