import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arpon extends StatelessWidget {
  const Arpon({super.key});

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
            'Jolas\' Resume',
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
                            'assets/images/2.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Jolas Arpon',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Programmer | jolasarpon1@gmail.com | +(63) 965-123-5564'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          'Driven and detail-oriented Information Technology student with a solid foundation in software and web development. Proficient in HTML, CSS, and JavaScript with practical experience in modern frameworks like React. Passionate about designing innovative digital solutions and delivering seamless, user-focused experiences. Committed to continuous learning and utilizing technology to address real-world challenges effectively.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Jolas Santos Arpon'),
                        _detailText('Gender: Male'),
                        _detailText('Date of Birth: September 14, 2003'),
                        _detailText('Address: Santa Ana, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 Skilled in web and software development using PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Proficient in developing applications with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Experienced with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript for web development.'),
                        _bulletText('\u2022 Well-versed in using PHP (CodeIgniter), C#, HTML, CSS, and JavaScript to create dynamic web solutions.'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022 Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - (GAS) | Holy Cross College | Graduated: 2022'),
                        _bulletText('\u2022 JS - San Isidro High School | Graduated: 2020'),
                        _bulletText('\u2022 PRIMARY - San Isidro Elementary School | Graduated: 2016'),
                        SizedBox(height: 20),

                        _sectionTitle('Projects'),
                        _sectionDivider(),
                        _bulletText('\u2022 Branch Operations Management System: A web application designed to optimize and manage branch operations, developed with PHP and MySQL.'),
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
