import 'package:flutter/material.dart';
import 'package:porfolio_app/const.dart';
import 'package:porfolio_app/ui/contact_page.dart';
import 'package:porfolio_app/ui/project_page.dart';
import 'package:porfolio_app/util.dart';
import 'package:porfolio_app/widget/animation.dart';
import 'package:porfolio_app/widget/footer.dart';
import 'package:porfolio_app/widget/skill.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> skills = [
    "HTML",
    "CSS",
    "JavaSript",
    "React",
    "Flutter",
    "React Native",
    "Dart",
    "Angular",
    "Ionic",
    "WordPress",
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double skillWidth =
        MediaQuery.sizeOf(context).width -
        (MediaQuery.sizeOf(context).width * 0.35 + 100);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Portfolio',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProjectsPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Contact Info',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 2,
              color: Colors.blueGrey,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: checkDeviceSize(screenWidth) == mobile ? 18 : 24,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Me',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: checkDeviceSize(screenWidth) == mobile ? 19 : 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            AnimationWidget(),
            SizedBox(height: 10),
            Text(
              "Focus professional having excellent technical and communication skill , and offering 3 years of experience in Software Industry. Proficient at designing and formulating test automation frameworks, writing code in various languages , feature development and implementation. Specilize in thinking outside the box to find unique solutions to difficult engineering problems.",
              style: TextStyle(
                fontSize: adjustFontSize(screenWidth, body),
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width * 0.35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Education",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, header),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Bachelor of Computer Science (B.C.Sc)",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "University of Computer Studies, Yangon",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2014 - 2019",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, header),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Mobile Developer",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, header),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Oriental Vigour Pte.ltd",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "April 2022 - Present",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Software Engineer",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, header),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Being Myanmar Co.ltd",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "January 2020 - July 2020 (6 months)",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Internship (Mobile Developer)",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, header),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Center for Economic and Social Development",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "3 months",
                        style: TextStyle(
                          fontSize: adjustFontSize(screenWidth, body),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: skillWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'What Skill I have',
                          style: TextStyle(
                            fontSize: adjustFontSize(screenWidth, header),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    checkDeviceSize(screenWidth) == desktop
                                    ? 3
                                    : 2,
                                mainAxisSpacing: 8.0,
                                crossAxisSpacing: 8.0,
                                childAspectRatio: 3,
                              ),
                          itemCount: skills.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Center(
                              child: skill(context, skills[index].toString()),
                            );
                          },
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     skill(context, "HTML"),
                        //     SizedBox(width: 10),
                        //     skill(context, "CSS"),
                        //     SizedBox(width: 10),
                        //     // skill(context, "Javascript"),
                        //     SizedBox(width: 10),
                        //     // skill(context, "React"),
                        //   ],
                        // ),
                        // SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     skill(context, "Flutter"),
                        //     SizedBox(width: 10),
                        //     skill(context, "React Native"),
                        //     SizedBox(width: 10),
                        //     skill(context, "Dart"),
                        //   ],
                        // ),
                        // SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     skill(context, "Angular"),
                        //     SizedBox(width: 10),
                        //     skill(context, "Ionic"),
                        //   ],
                        // ),
                        // SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [skill(context, "Wordpress")],
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 2,
              color: Colors.blueGrey,
            ),
            footer(context),
          ],
        ),
      ),
    );
  }
}
