 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/constants.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
 
      body:
         Center(
          child: Container(height: 666,
            padding: EdgeInsets.symmetric(horizontal: 10,  ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin:   EdgeInsets.symmetric(
                  vertical: defaultPadding, horizontal: defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(-2, 0),
                      blurRadius:   20  ,
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius:  20,),
                  ]),
              child:
               AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child:    SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Me in brief", style: GoogleFonts.acme(fontSize: 25,color: Colors.white),
              ),
              
              Text(
                "I am a passionate Flutter developer currently pursuing my Master of Computer Applications (MCA) at Jain University,Banglore. Originally from Wayanad, Kerala, India, I hold a Bachelor's degree in Computer Science (B.Sc CS).",
                style: GoogleFonts.acme(fontSize: 18),
              ),
              SizedBox(height: 20),
                Text(
            "Education",
            style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
              _buildEducationSection(
                "Master of Computer Applications (MCA)-Present",
                "Jain University, Bangalore",
              ),
              _buildEducationSection(
                "Bachelor of Science in Computer Science (B.Sc CS)",
                "Kannur University, Kerala",
              ),
              SizedBox(height: 20),
                 Text(
            "Experience",
            style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),_buildExperienceSection(
                "Senior Flutter Developer",
                "DataSpot Technologies, Kinfra Park , Kakkanjery , Kerala | [Nov 2022] - Present",
                "Worked as the Senior Flutter Devoloper.I could serve as the Team Lead for multiple projects like Cityway,Magnus etc which has given me the confidence to move on during the biggest bottlenecks I have faced during a career in the Mobile Devolopment Field ... Deployed multiple apps to Appstore. Could make Real-Time communication using various technologies a 'Cup of tea'",
              ),
           
              SizedBox(height: 20),
              _buildExperienceSection(
                "Flutter Developer",
                "Designfort, Dubai | [Jan 2022] - [Oct 2022]",
                "Have worked on multiple projects from Designfort.It was from Designfort my actual journey was beginned.The main project I worked was 'Babilsouq' which was an E-Commerce app fro used products.Beginned my jouney to Third-Party SDKs from here.",
              ), 
              SizedBox(height: 20),
                 _buildExperienceSection(
                "Flutter Developer Intern",
                "Phygitalz Solutions, Chennai | [June 2021] - [Dec 2021]",
                "Worked on a school management project called 'School' during the internship.",
              ), 
  SizedBox(height: 20),
                   Text(
            "Skills",
            style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
_buildSkillSection(["Flutter","Dart","Firebase","NodeJs","Web-Socket","GetX","Provider","RESTful Api","GitHub","Kotlin","blOC","Geolocation","App Deployment"]),
                      Text(
            "Languages",
            style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
              _buildLanguageSection("English", "Professional"),
              _buildLanguageSection("Malayalam", "Native"),
              _buildLanguageSection("Hindi", "Professional"),
              _buildLanguageSection("Tamil", "Intermediate"),
              SizedBox(height: 20),
                   Text(
            "Contact",
            style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          _buildContactSection("Phone", "+91 9744907450"),
              _buildContactSection("Email", "ashiquesofdevoloper@gmail.com"),
         SizedBox(height: 20),
              Text(
                "Location",
                style: GoogleFonts.balooDa2(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Wayanad, Kerala, India",
                style: GoogleFonts.acme(fontSize: 18),
              ),
              SizedBox(height: 20), 
            ],
          ),
        ),
      ),
          
      )
              
           
          )
               
          ),
        )
      
    );
  }

  Widget _buildContactSection(String title, String contact) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        SizedBox(height: 10),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [     Text(
          "*   ${title}",
          style: GoogleFonts.acme(fontSize: 18),
        ),
        
        Text(
          contact,
          style: GoogleFonts.acme(fontSize: 16, color: Colors.grey),
        ),
        ],)
   
      ],
    );
  }

  Widget _buildEducationSection(String degree, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        SizedBox(height: 10),
        Text(
          degree,
          style: GoogleFonts.acme(fontSize: 18),
        ),
        Text(
          details,
          style: GoogleFonts.acme(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 10),
      ],
    );
  }

    Widget _buildSkillSection(List<String>skills) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: skills.map((e) => Text(e,style:GoogleFonts.acme(fontSize: 16, color: Colors.grey) ,)).toList(),);
  }
  Widget _buildLanguageSection(String langauge, String level) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        SizedBox(height: 10),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [     Text(
          "*   ${langauge}",
          style: GoogleFonts.acme(fontSize: 18),
        ),
        
        Text(
          level,
          style: GoogleFonts.acme(fontSize: 16, color: Colors.grey),
        ),
        ],)
   
      ],
    );
  }
  Widget _buildExperienceSection(String title, String duration, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     
        SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.acme(fontSize: 18),
        ),
        Text(
          duration,
          style: GoogleFonts.acme(fontSize: 16, color: Colors.grey),
        ),
        Text(
          description,
          style: GoogleFonts.acme(fontSize: 16),
        ),
        SizedBox(height: 10),
      ],
    );
  }


}
