import 'package:flutter/cupertino.dart';
import 'ama.dart'; 

void main() {
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    theme: CupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: CupertinoColors.darkBackgroundGray,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'DevOps Resumes',
          style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.info_circle, 
            color: CupertinoColors.white,),
          onPressed: () {
            showCupertinoModalPopup(
             context: context,
              builder: (context) => _buildInfoDialog(context),
           );
          },
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Select a team member to view their resume:',
                  style: TextStyle(fontSize: 18, color: CupertinoColors.systemGrey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Center(child: _buildMemberCard('Ama, Beyonce N.', 'images/1.jpg', context, Ama())),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMemberCard(String name, String imagePath, BuildContext context, Widget page) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey5,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey2,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              imagePath,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.black),
          ),
          SizedBox(height: 10),
          CupertinoButton.filled(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adds more space
            minSize: 50, // Ensures button height remains stable
            child: FittedBox(
              fit: BoxFit.scaleDown, // Prevents text overflow
              child: Text(
                'View Resume',
                style: TextStyle(fontSize: 16), // Keep a readable size
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => page), // Navigate to respective page
              );
            },
          )
        ],
      ),
    );
  }
}
 Widget _buildInfoDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Team Members"),
      content: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,  
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMemberCard('images/1.jpg', 'Ama'),
                _buildMemberCard('images/2.jpg', 'Arpon'),
                _buildMemberCard('images/3.jpg', 'Carreon'),
                _buildMemberCard('images/4.jpg', 'Gamboa'),
                _buildMemberCard('images/5.jpg', 'Larin'),
                _buildMemberCard('images/6.jpg', 'Macalino'),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          child: Text("Close"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }

  Widget _buildMemberCard(String imagePath, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
