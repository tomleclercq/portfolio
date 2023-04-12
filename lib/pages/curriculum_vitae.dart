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
        horizontal: 4 + display.x * 0.1,
        vertical: 8 + display.y * 0.1,
      ),
      child: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Curriculum Vitae',
                  style: CustomStyles.h1,
                ),
              ),
              Section(
                title: 'Skills and Training',
                listItems: [
                  '<b>Font-End</b> Developer: <b>Flutter</b>, React-Native, native Android & iOS',
                  'Developer Unity3D - behaviours, tools editor, plugin',
                  '<b>Dart</b>, C#, C++, lua, the required language',
                  'Image editing, <b>wireframe</b>, 2D/3D concepts, <b>User-Experience design</b>',
                  'Mar. 2017 Structure and computer Network - Training',
                  'Mar. 2017 Administering Windows Server 2012 R2 - Training',
                ],
              ),
              Section(
                title: 'Interests',
                listItems: [
                  '> Arts, Movies, Games, Music, <b>Science</b>, Socio-cultural interaction, <b>Technologies</b>.',
                ],
              ),
              Section(
                title: 'Memberships',
                listItems: [
                  '<b>Deloitte EMEA Metaverse</b> Community, Tech Lead',
                  'Deloitte GLOBE, core-member & Open@Work',
                  'Deloitte Diversity Equity & Inclusion, SPOC <b>LGBT+</b> consulting',
                ],
              ),
              Section(
                title: 'Experiences',
                listItems: [
                  'Jan. 2021 <b>Team lead</b> Flutter mobile application development',
                  'Jun. 2020 Promoted to <b>Senior Specialist</b> - Mobile developer',
                  'Mar. 2019 <b>Facilitator</b> Digital Masterclass Deloitte Belgium',
                  'Mar. 2017 Blending Game Jam, Brussels (VR project Developer)',
                  'Oct. 2015 Kiss Your Teacher (<b>Developer</b>)',
                  'Jan. 2015 Global Game Jam, Antwerpen (<b>3D modelisation, Developer</b>)',
                  'Jan. 2014 Global Game Jam, Antwerpen (Developer)',
                  'Sept. 2009 - June 2013 <b>Bachelor</b> in Graphic Design, <b>specialised in Video Game Developement</b> - HEAJ, Namur.',
                ],
              ),
              Section(
                title: 'Professional History',
                listItems: [
                  'Feb. 2018 - Present <b>Senior specialist, Front-end developer</b>, Deloitte Digital',
                  'Sept. 2013 - Jan. 2018 <b>Interactive Application Developer and Graphic designer</b>, Brandfirst',
                  'Dec. 2012 - Mar. 2013 Internship Developer C# - Brandfirst',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
