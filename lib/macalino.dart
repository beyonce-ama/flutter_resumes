import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Macalino extends StatelessWidget {
  const Macalino({super.key});

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
            'Rachelle\'s Resume',
            style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.white),
            
          ),
             previousPageTitle: 'Back',
          backgroundColor: CupertinoColors.darkBackgroundGray,
        ),
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
                            'assets/images/6.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rachelle Anne Macalino',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Software Developer | rachellemacalino@gmail.com | +(63) 902-352-3562'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          'An IT student with a strong background in web development, proficient in HTML, CSS, JavaScript, and React. Dedicated to building user-centric solutions while continually enhancing technical skills.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Rachelle Anne Macalino'),
                        _detailText('Gender: Female'),
                        _detailText('Date of Birth: June 3, 2004'),
                        _detailText('Address: Arayat, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 Experienced in building responsive websites with a combination of PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Skilled in designing and implementing responsive web solutions with PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Proficient in developing responsive web applications using PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        _bulletText('\u2022 Adept at designing dynamic websites and applications using PHP (CodeIgniter), C#, HTML, CSS, and JavaScript.'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022 Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - (TVL) | Justino Sevilla High School | Graduated: 2022'),
                        _bulletText('\u2022 JS - Saint Louis High School-Philex | Graduated: 2020'),
                        _bulletText('\u2022 PRIMARY - Philex Mines Elementary School | Graduated: 2016'),
                        SizedBox(height: 20),

                        _sectionTitle('Projects'),
                        _sectionDivider(),
                        _bulletText('\u2022 Inventory Management System: A PHP and MySQL-Based Web Application for Optimizing Stock Contro'),
                        _bulletText('\u2022 Employee Management System: A PHP and MySQL-Based Web Application for Streamlining Workforce Operations'),
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
