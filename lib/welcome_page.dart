import 'package:cooking_app/custom_searchbar.dart';
import 'package:cooking_app/options.dart';
import 'package:flutter/material.dart';
import 'cookPage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              height: 200,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.category_sharp,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(width: 310),
                      Icon(
                        Icons.notifications_on,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Hi Sonia",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9TM9qfk7XnN6xy_XgNrIevJ_WHawL1je9_Q&usqp=CAU"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 380,
                        child: CustomSearchbar(
                          hintText: "what category are you searching for?",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Icon(
                        Icons.delete_outlined,
                        color: Colors.deepPurple[100],
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.deepPurple[100],
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.swap_vertical_circle_outlined,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 500,
                    width: 500,
                    child: GridView.builder(
                      padding: EdgeInsets.all(20),
                      addAutomaticKeepAlives: false,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 30,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Options(
                          container1Color: optionList[index].backgroundColor,
                          container2Color: optionList[index].circleColor,
                          icons: optionList[index].icon,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return optionList[index].onPressed!;
                                },
                              ),
                            );
                          },
                          text: optionList[index].name,
                          textColor: optionList[index].color,
                        );
                      },
                      itemCount: optionList.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.deepPurple[200],
        selectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.deepPurple,
            ),
          ),
          BottomNavigationBarItem(
            label: "Rate",
            icon: Icon(
              Icons.star_outlined,
              color: Colors.deepPurple[200],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

List<CategoryCardData> optionList = [
  CategoryCardData(
    icon: Icons.lightbulb_outline,
    name: "New ideas",
    backgroundColor: Colors.amber[100],
    circleColor: Colors.amber[50],
    color: Colors.amber[700],
    // onPressed:
  ),
  CategoryCardData(
    icon: Icons.music_note_outlined,
    name: "Music",
    backgroundColor: Colors.blue[100],
    circleColor: Colors.blue[50],
    color: Colors.blue[700],
    // onPressed:
  ),
  CategoryCardData(
    icon: Icons.tv_outlined,
    name: "Programming",
    backgroundColor: Colors.purple[100],
    circleColor: Colors.purple[50],
    color: Colors.purple[700],
    // onPressed: () {},
  ),
  CategoryCardData(
    icon: Icons.food_bank_outlined,
    name: "Cooking",
    backgroundColor: Colors.pink[100],
    circleColor: Colors.pink[50],
    color: Colors.pink[700],
    onPressed: CookPage(),
  ),
  CategoryCardData(
    icon: Icons.flight_takeoff_outlined,
    name: "Flights",
    backgroundColor: Colors.green[100],
    circleColor: Colors.green[50],
    color: Colors.green[700],
    // onPressed: () {},
  ),
  CategoryCardData(
    icon: Icons.swap_horiz_outlined,
    name: "Austrology",
    backgroundColor: Colors.red[100],
    circleColor: Colors.red[50],
    color: Colors.red[700],
    // onPressed: () {},
  ),
];

class CategoryCardData {
  final Widget? onPressed;
  final IconData? icon;
  final String? name;
  final Color? backgroundColor;
  final Color? circleColor;
  final Color? color;

  CategoryCardData({
    this.icon,
    this.name,
    this.backgroundColor,
    this.circleColor,
    this.color,
    this.onPressed,
  });
}
