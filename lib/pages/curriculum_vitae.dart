import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/section.dart';

class CurriculumVitae extends StatefulWidget {
  const CurriculumVitae({super.key});
  static String name = '/cv';

  static Future<void> routeTo() async {
    await Navigator.of(navigatorKey.currentContext!)
        .pushNamed(CurriculumVitae.name);
  }

  @override
  State<CurriculumVitae> createState() => _CurriculumVitaeState();
}

class _CurriculumVitaeState extends State<CurriculumVitae> {
  @override
  Widget build(BuildContext context) {
    final display = ResponsiveDisplay(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4 + display.x * 0.05,
        vertical: 8 + display.y * 0.05,
      ),
      child: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 32.0),
                child: Text(
                  'I am a creative mine, a digital creator. Passion is my driver. I love human interaction and technology ',
                  style: CustomStyles.body,
                ),
              ),
              Section(
                title: 'Skills',
                listItems: [
                  '<b>Font-End</b> Developer: <b>Flutter</b>, React Native, <b>React</b>, native Android & iOS',
                  'JavaScript, <b>Dart</b>, C#, C++, lua, HTML/CSS, any other required language',
                  'Unity3D - plugin, <b>custom editor tools</b>, behaviours',
                  'Image editing, <b>2D/3D concepts</b>, wireframe, <b>UX design</b>',
                ],
              ),
              Section(
                title: 'Experiences',
                listItems: [
                  '''Jan. 2021 - May 2025: <b>Senior Developer & Team Lead</b>
 + Application developer: <b>Flutter</b> & <b>React</b>
 + Tools developer: <b>Unity3D C#</b>, Excel & MacOS/Windows scripting
 + Mobile developer''',
                  '''Mar. 2019 - May 2025: <b>Facilitator</b>
 + <b>A11y</b> workshops
 + Inclusivity roundtables
 + <b>Knowledge sharing sessions</b>: 3D, spatial displays, a11y, coding principles and more
 + Digital Masterclass''',
                  '''Mar. 2017: Blending Game Jam, Brussels
+ Developer VR project''',
                  '''Oct. 2015: Kiss Your Teacher
+ Developer learning game''',
                  '''Jan. 2015: Global Game Jam, Antwerpen
+ 3D Artist: Modelisation, Texturing
+ Developer game behaviour''',
                  '''Jan. 2014: Global Game Jam, Antwerpen
+ Developer game behaviour''',
                ],
              ),
              Section(
                title: 'Trainings & Education',
                listItems: [
                  'Aug. 2024: Accessibility - Abra training',
                  'Oct. 2023: Know your voice',
                  'Nov. 2022: <b>Leading for change</b> & Managing change',
                  'Jun. 2021: First aids at work',
                  'Oct. 2018: User story writing',
                  'Sep. 2018: <b>Scrum & Agile</b>',
                  'Mar. 2017: Structure and <b>computer Network</b>',
                  'Mar. 2017: <b>Administering Windows Server</b> 2012 R2',
                  '''Sept. 2009 - June 2013: <b>Bachelor</b> as Graphic Designer, specialised in <b>Video Game Developement</b> - HEAJ, Namur.''',
                ],
              ),
              Section(
                title: 'Professional History',
                listItems: [
                  'Jun. 2020 - May 2025: <b>Senior specialist, Application & Front-end developer</b>, Deloitte Digital - Zaventem, Belgium',
                  'Feb. 2018 - Jun. 2020: <b>Specialist, application developer</b>, Deloitte Digital - Zaventem, Belgium',
                  'Sept. 2013 - Jan. 2018: <b>Interactive Application Developer and Graphic designer</b>, Brandfirst - Brussels, Belgium',
                  'Dec. 2012 - Mar. 2013: Internship Developer C# - Brandfirst - Brussels, Belgium',
                ],
              ),
              Section(
                title: 'Memberships',
                listItems: [
                  '''<b>Open@Work</b>''',
                  '''<b>Diversity Equity Inclusion</b>:
 + 2022-2025  Deloitte LGBT+ focus group, Proud - Core team''',
                ],
              ),
              Section(
                title: 'Interests',
                listItems: [
                  '<b>Human interactions</b>, Movies, <b>Arts</b>, Games, Music, <b>Science</b>, Travel, <b>Technologies</b>.',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
