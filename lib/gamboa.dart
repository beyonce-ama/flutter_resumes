import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gamboa extends StatelessWidget {
  const Gamboa({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoThemeData(
      brightness: Brightness.light,
        primaryColor: CupertinoColors.white, 
      ),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'Romel\'s Resume',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: CupertinoColors.white),
            
          ),
             previousPageTitle: 'Back',
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
    backgroundColor: CupertinoColors.systemTeal,

        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
               padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child:
               Column(
                 children: [
                   SizedBox(height: 20),
                   Container(
                    padding: const EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                         borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            'assets/images/4.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Romel Gamboa',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Programmer | romelgamboa959@gmail.com | +(63) 975-122-0004'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          'Motivated and detail-oriented Information Technology student with a strong foundation in software and web development. Proficient in HTML, CSS, and JavaScript, with hands-on experience exploring modern frameworks such as React. Passionate about crafting innovative digital solutions and delivering intuitive.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Romel Panlilio Gamboa'),
                        _detailText('Gender: Male'),
                        _detailText('Date of Birth: October 29, 2004'),
                        _detailText('Address: Santa Ana, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 Proficient in PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Skilled in MySQL (CRUD operations, relational design, optimization).'),
                        _bulletText('\u2022 Experienced in building dynamic web applications with CodeIgniter.'),
                        _bulletText('\u2022 Adept at designing responsive interfaces with Bootstrap and CSS.'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022 Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - (GAS) | Telesforo & Natividad Alfonso High School | Graduated: 2022'),
                        _bulletText('\u2022 JS - Telesforo & Natividad Alfonso High School | Graduated: 2020'),
                        _bulletText('\u2022 PRIMARY - Sta Maria Elementary School | Graduated: 2016'),
                        SizedBox(height: 20),

                        _sectionTitle('Projects'),
                        _sectionDivider(),
                        _bulletText('\u2022 Gaming Bracket System: A web application for streamlining company branch operations, built with PHP and MySQL'),
                        _bulletText('\u2022 Branch Management System: A web application for creating and managing competitive gaming brackets, developed with PHP and MySQL.'),
                      ],
                    ),
              ),
                 ],
               ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CupertinoColors.darkBackgroundGray),
      ),
    );
  }

  Widget _sectionDivider() {
    return Divider(
      thickness: 1.5,
      color: CupertinoColors.systemGrey,
      height: 20,
    );
  }

  Widget _detailText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: CupertinoColors.black),
      ),
    );
  }

  Widget _bulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: CupertinoColors.black),
                                textAlign: TextAlign.center,

          ),
        ),
      ],
    );
  }
}
