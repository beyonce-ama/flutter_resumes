import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carreon extends StatelessWidget {
  const Carreon({super.key});

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
            'Monica\'s Resume',
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
                            'assets/images/3.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Monica Carreon',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Developer | monicacarreon@gmail.com | +(63)915-9532-206'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          ' I am ready to utilize my skills, expertise, and knowledge to help the company achieve its goals. I am bringing forth a positive attitude, willingness and motivation.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Monica Pangan Carreon'),
                        _detailText('Gender: Female'),
                        _detailText('Date of Birth: August 18, 2003'),
                        _detailText('Address: Candaba, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 PHP, C#, HTML, CSS'),
                        _bulletText('\u2022 Experienced with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript for web development.'),
                        _bulletText('\u2022 MySQL (CRUD operations, relational design, optimization)'),
                        _bulletText('\u2022 Designing user-friendly interfaces with Bootstrap and CSS'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022 Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - (GAS) | St. Andrews Archdiocesan | Graduated: 2022'),
                        _bulletText('\u2022 JS - St. Andrew Academy of Quezon City | Graduated: 2020'),
                        _bulletText('\u2022 PRIMARY - St. Andrew Academy of Quezon City | Graduated: 2016'),
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
