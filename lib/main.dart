import 'package:flutter_web/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Furniture(),
    ),
  );
}

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Furniture",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.account_circle,
          color: Colors.black,
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.network(
              "https://ak1.ostkcdn.com/img/mxc/02142019_Furniture_AMOD_DESKTOP.jpg",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Carica store new product",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16.0),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Outdoor Furniture",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 50.0),
                ),
                const SizedBox(height: 14.0),
                Text(
                  "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.fade,
                ),
                const SizedBox(height: 20.0),
                FlatButton(
                  onPressed: () {},
                  color: Color(0xFFCFE8E4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Read More"),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Icon(Icons.search),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
    );
  }
}
