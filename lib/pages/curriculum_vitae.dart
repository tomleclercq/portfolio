import 'package:flutter/material.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/open_link.dart';
import 'package:portfolio/widgets/section.dart';

class CurriculumVitae extends StatefulWidget {
  const CurriculumVitae({super.key});
  static String name = 'cv';
  @override
  State<CurriculumVitae> createState() => _CurriculumVitaeState();
}

class _CurriculumVitaeState extends State<CurriculumVitae> {
  @override
  Widget build(BuildContext context) {
    final display = ResponsiveDisplay(context);

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      // query: 'subject=Contact',
    );
    final String emailUriString =
        emailLaunchUri.toString().replaceAll('+', '%20');

    return Padding(
      padding: EdgeInsets.only(
        top: display.x * 0.05,
        right: display.x * 0.15,
        bottom: display.x * 0.05,
        left: display.x * 0.15,
      ),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomStyles.getText('Tom <b>Leclercq</b>'),
                    Row(
                      children: [
                        CustomStyles.getText('+32(0)477130090 - '),
                        OpenLink(
                          LinkType.text,
                          url: emailUriString,
                          title: email,
                        ),
                      ],
                    ),
                    CustomStyles.getText('41/12 Hector Henneaulaan'),
                    CustomStyles.getText('1930 Zaventem'),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  'Curriculum Vitae',
                  style: CustomStyles.h1,
                ),
              ),
              const Section(
                title: 'Skills and Training',
                listItems: [
                  '<b>Font-End</b> Developer: <b>Flutter</b>, React-Native, native Android & iOS',
                  'Developer Unity3D - behaviours, tools editor, plugin',
                  'Dart, C#, C++, lua, the required language',
                  '2D/3D concepts, <b>wireframe</b>, User-Experience design, <b>Image editing</b>',
                  'Mar. 2017 Structure and computer Network - Training',
                  'Mar. 2017 Administering Windows Server 2012 R2 - Training',
                ],
              ),
              const Section(
                title: 'Interests',
                listItems: [
                  '> Arts, Movies, Games, Music, <b>Science</b>, Socio-cultural interaction, <b>Technologies</b>.',
                ],
              ),
              const Section(
                title: 'Memberships',
                listItems: [
                  'Deloitte Diversity Equity & Inclusion, SPOC <b>LGBT+</b> consulting',
                  'Deloitte GLOBE, core-member',
                  '<b>Deloitte EMEA Metaverse</b> Community, Tech Lead',
                  'Open@Work',
                ],
              ),
              const Section(
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
              const Section(
                title: 'Professional History',
                listItems: [
                  'Feb. 2018 - Present <b>Senior specialist, Front-end developer</b>, Deloitte Digital',
                  'Sept. 2013 - Jan. 2018 <b>Interactive Application Developer and Graphic designer</b>, Brandfirst',
                  'Dec. 2012 - Mar. 2013 Internship Developer C# - Brandfirst',
                ],
              ),
              /* Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    OpenLink(
                      LinkType.text,
                      title: 'Download my printable CV from Google Drive',
                      url:
                          "https://drive.google.com/open?id=1ROXduHpF0hd5FXFRFfPUxLdiZhG75j36",
                    ),
                  ],
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
