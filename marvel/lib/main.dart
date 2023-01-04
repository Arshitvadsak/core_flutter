import 'package:flutter/material.dart';
import 'nextpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    //  initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'captain': (context) => const Captain(),
      },
      home: AppBar(),
    ),

  );
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
// ignore: non_constant_identifier_names
  List<Map<String, dynamic>> AllData = [
      {
  'hero': "Captain America",
  'heroname': "Steve Rogers",
  'herophoto': const Image(
  image: AssetImage("asset/images/captain.png"),
  height: 250,
  width: 250,
  ),
  'herodetails':
  "Simon and Kirby created Steve Rogers, a would-be army enlistee rejected by recruiters because of his small size. Rogers volunteers to receive a top-secret serum, and he is transformed into a “super soldier.” Dubbed Captain America and clad in a red, white, and blue costume with a matching stars-and-stripes shield, Rogers joins the U.S. Army, acquires a kid sidekick—plucky regimental mascot Bucky Barnes—and embarks on a career of enthusiastic Nazi-bashing.",
},
{
'hero': "Iron Man",
'heroname': "Tony Stark",
'herophoto': const Image(
image: AssetImage("asset/images/iron.png"),
height: 250,
width: 250,
),
'herodetails':
"In the movies and the earlier comic books, Tony Stark is a human. Outside the suit, he does not have any superpowers, however he is very intelligent. He made the suit himself. Iron Man can fly and shoot beams from his hands using special technology called repulsors in his boots and gloves. He is not hurt by most weapons like guns and cannons because of his armor. There are many versions of the Iron Man suit, because Stark keeps making improvements."
"In the later comic books, Stark took an experimental virus called Extremis which allowed him to control his suit with his mind and summon it wherever he was. Stark would eventually develop an armor that he could store in his body. This armor was known as the Bleeding Edge Model 37.",
},
{
'hero': "Ant Man",
'heroname': "Ant Man",
'herophoto': const Image(
image: AssetImage("asset/images/antman.png"),
height: 250,
width: 250,
),
'herodetails':
"Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats",
},
{
'hero': "Black Panther",
'heroname': "T'Challa",
'herophoto': const Image(
image: AssetImage("asset/images/black2.png"),
height: 250,
width: 250,
),
'herodetails':
"Seeking to address the dearth of Black characters in comics, Lee and Kirby created T’Challa, a member of the royal family of the fictional African country of Wakanda. Wakanda was depicted as a peculiar mix of futuristic technology and traditional life, a dichotomy produced by the presence in the country of Vibranium, a rare and nearly indestructible meteoric ore. After the death of his father at the hands of the villainous Ulysses Klaw, T’Challa claimed the throne as well as the mantle of the Black Panther.",
},
{
'hero': "Doctor Strange",
'heroname': "Doctor Strange",
'herophoto': const Image(
image: AssetImage("asset/images/doctor.png"),
height: 250,
width: 250,
),
'herodetails':
"While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.Marvel's Doctor Strange follows the story of the talented neurosurgeon Doctor Stephen Strange who, after a tragic car accident, must put ego aside and learn the secrets of a hidden world of mysticism and alternate dimensions. Based in New York City's Greenwich Village, Doctor Strange must act as an intermediary between the real world and what lies beyond, utilising a vast array of metaphysical abilities and artifacts to protect the Marvel Cinematic Universe.",
},
{
'hero': "Spider Man",
'heroname': "Peter Parker",
'herophoto': const Image(
image: AssetImage("asset/images/spider.png"),
height: 250,
width: 250,
),
'herodetails':
"Spider-Man, comic-book character who was the original everyman superhero. In Spider-Man’s first story, in Marvel Comics’Amazing Fantasy, no. 15 (1962), American teenager Peter Parker, a poor sickly orphan, is bitten by a radioactive spider. As a result of the bite, he gains superhuman strength, speed, and agility along with the ability to cling to walls. Writer Stan Lee and illustrator Steve Ditko created Spider-Man as a filler story for a canceled anthology series.",
},
{
'hero': "Thor",
'heroname': "Thor",
'herophoto': const Image(
image: AssetImage("asset/images/thor.png"),
height: 250,
width: 250,
),
'herodetails':
"Thor was born to the King of the Asgardian Gods, Odin Borson, and the Earth Goddess Gaea. He grew up in Asgard under Odin's tutelage and trained in his footsteps to one day lead Asgard. Besides Odin, his stepmother Frigga and his adopted brother Loki are the only family he know, alongside his best friends Sif, Balder, and the Warriors Three.",
},
{
'hero': "Vision",
'heroname': "Vision",
'herophoto': const Image(
image: AssetImage("asset/images/vision.png"),
height: 250,
width: 250,
),
'herodetails':
"The Vision is a fictional character portrayed by Paul Bettany in the Marvel Cinematic Universe (MCU) media franchise, based on the Marvel Comics character of the same name.Vision is a vibranium-based male android (or Synthezoid) created by Ultron to serve as hisbody.",
},
{
'hero': "Thanos",
'heroname': "Thanos",
'herophoto': const Image(
image: AssetImage("asset/images/thanos.png"),
height: 250,
width: 250,
),
'herodetails':
"A Titan among Men Physically, Thanos stands head and shoulders above the average human or humanoid, with powerful muscles, a broad face, and a purple-hued skintone. He often wears a protective suit of armor and his strength is such that he has been physically able to battle—and defeat—the likes of the Hulk.",
},
];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xff10002b),
      title: const Text("M A R V E L U N I V E R S E"),
      centerTitle: true,
    ),
    body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomLeft,
            color: const Color(0xff240046),
            child: const Text(
              " AVENGERS",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: const Color(0xff240046),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ...AllData.map((e) => Container1(
                    e['herophoto'],
                    e['hero'],
                    e['heroname'],
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'captain',
                            arguments: e);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 10),
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: const Color(0xff170528),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: const Text(
                          "Know More",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )).toList(),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
// ignore: non_constant_identifier_names
Widget Container1(
    Image image1,
    String hero,
    String heroname,
    dynamic h1,
    ) {
  return Stack(
    children: [
      Align(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
            gradient: const LinearGradient(
              colors: <Color>[
                Color(0xff591798),
                Color(0xff3d0a6e),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  hero,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  heroname,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              h1,
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: const Alignment(0, -.45),
        child: image1,
      ),
    ],
  );
}
}
