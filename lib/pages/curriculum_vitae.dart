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
                  'Curriculum Vitae',
                  style: CustomStyles.h1,
                ),
              ),
              Section(
                title: 'Skills and Training',
                listItems: [
                  '<b>Font-End</b> Developer: <b>Flutter</b>, React-Native, <b>React</b>, native Android & iOS',
                  'Unity3D - behaviours, <b>tools editor</b>, plugin',
                  '<b>Dart</b>, C#, C++, lua, any required language',
                  'Image editing, <b>wireframe</b>, 2D/3D concepts, <b>UX design</b>',
                  'Aug. 2024 Accessibility - Abra training',
                  'Mar. 2017 Structure and computer Network - Training',
                  'Mar. 2017 Administering Windows Server 2012 R2 - Training',
                ],
              ),
              Section(
                title: 'Interests',
                listItems: [
                  'Movies, <b>Arts</b>, Games, Music, Travel, <b>Science</b>, Human interaction, <b>Technologies</b>.',
                ],
              ),
              Section(
                title: 'Memberships',
                listItems: [
                  '''Open@Work - Representative for Deloitte''',
                  '''Deloitte Diversity Equity Inclusion:
 + Proud - Core team
 + <b>LGBT+</b> - Team Lead for Technology''',
                  'Deloitte <b>EMEA Metaverse</b> - Community member',
                ],
              ),
              Section(
                title: 'Experiences',
                listItems: [
                  '''Jan. 2021 - now: <b>Lead</b>
 + Flutter mobile application developer
 + Diversity, equity, inclusion: LGBT+ co-lead of consulting Deloitte, Belgium''',
                  '''Jan. 2020 - now: <b>Senior Developer</b>
 + Flutter application developer
 + React application developer
 + C# Unity3D Tool developer
 + Mobile developer''',
                  '''Mar. 2019 - now: <b>Facilitator</b>
 + A11y workshops
 + Inclusivity roundtables
 + Knowledge-Sharing Sessions
 + Digital Masterclass Deloitte Belgium''',
                  '''Mar. 2017: Blending Game Jam, Brussels (VR project Developer)''',
                  '''Oct. 2015: Kiss Your Teacher (<b>Developer</b>)''',
                  '''Jan. 2015: Global Game Jam, Antwerpen (<b>3D modelisation, Developer</b>)''',
                  '''Jan. 2014: Global Game Jam, Antwerpen (Developer)''',
                  '''Sept. 2009 - June 2013 <b>Bachelor</b> as Graphic Designer, specialised in <b>Video Game Developement</b> - HEAJ, Namur.''',
                ],
              ),
              Section(
                title: 'Professional History',
                listItems: [
                  'Feb. 2018 - Present <b>Senior specialist, Front-end developer</b>, Deloitte Digital, Belgium',
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
