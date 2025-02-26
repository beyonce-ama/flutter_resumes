import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Larin extends StatelessWidget {
  const Larin({super.key});

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
            'Kayle\'s Resume',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: CupertinoColors.white),
            
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
                            'assets/images/5.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Kayle Cedric Larin',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Web Developer | larinkayle@gmail.com | +(63) 923-734-9534'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          'Focused and detail-oriented Information Technology student with strong skills in software and web development. Passionate about creating user-friendly digital solutions and committed to continuous learning.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Kayle Cedric Cruz Larin'),
                        _detailText('Gender: Male'),
                        _detailText('Date of Birth: December 26, 2001'),
                        _detailText('Address: San Luis, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 Experienced in full-stack development with expertise in PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Proficient in developing applications with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Adept in developing scalable web solutions with expertise in PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Well-versed in creating dynamic websites with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022 Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - Automotive  | Holy Cross College | Graduated: 2022'),
                        _bulletText('\u2022 JS - San Isidro National High School | Graduated: 2020'),
                        _bulletText('\u2022 PRIMARY - San Isidro Elementary School | Graduated: 2016'),
                        SizedBox(height: 20),

                        _sectionTitle('Projects'),
                        _sectionDivider(),
                        _bulletText('\u2022 Library Management: A web application designed to streamline and manage library operations, developed with PHP and MySQL.'),
                        _bulletText('\u2022 Digital Library Management System: A web application designed for organizing and tracking library resources, developed with PHP and MySQL.'),
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
