import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ama extends StatelessWidget {
  const Ama({super.key});

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
            'Beyonce\'s Resume',
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
                          color: Colors.black.withOpacity(0.2),
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
                            'assets/images/1.jpg',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Beyonce Ama',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Developer | amabeyonce@gmail.com | +63 992-457-5394'),
                        SizedBox(height: 20),
                        
                        _sectionTitle('Profile'),
                        _sectionDivider(),
                        Text(
                          'Enthusiastic and detail-oriented Information Technology student specializing in software and web development.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),

                        _sectionTitle('Personal Details'),
                        _sectionDivider(),
                        _detailText('Full Name: Beyonce Nolasco Ama'),
                        _detailText('Gender: Female'),
                        _detailText('Date of Birth: November 2, 2004'),
                        _detailText('Address: Santa Ana, Pampanga'),
                        _detailText('Nationality: Filipino'),
                        SizedBox(height: 20),

                        _sectionTitle('Skills'),
                        _sectionDivider(),
                        _bulletText('\u2022 PHP (CodeIgniter), C#, HTML, CSS, JavaScript'),
                        _bulletText('\u2022 MySQL (CRUD operations, relational design, optimization)'),
                        _bulletText('\u2022 Building dynamic web applications with CodeIgniter'),
                        _bulletText('\u2022 Designing user-friendly interfaces with Bootstrap and CSS'),
                        SizedBox(height: 20),

                        _sectionTitle('Education'),
                        _sectionDivider(),
                        _bulletText('\u2022  Bachelor of Science in Information Technology - Holy Cross College | Current'),
                        _bulletText('\u2022 SHS - Technical Vocational (ICT)'),
                        _bulletText('\u2022 Next Generation Technological College | Graduated: 2022'),
                        _bulletText('\u2022 Diosdado Macapagal High School | Graduated: 2020'),
                        _bulletText('\u2022 Santa Ana Elementary School | Graduated: 2016'),
                        SizedBox(height: 20),

                        _sectionTitle('Projects'),
                        _sectionDivider(),
                        _bulletText('\u2022 Assets Management System: A web app for managing company assets using PHP and MySQL. Also in C# (Windows Form).'),
                        _bulletText('\u2022 Rooms and Building Information Management System: A system for managing room and building information using an interactive SVG-based interface.'),
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
