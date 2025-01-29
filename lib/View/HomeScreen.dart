import 'dart:async';

import 'package:flutter/material.dart';
import 'package:studio/View/AnimatedtextWidget.dart';

import 'SkillCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final Timer _timer;
  late final CarouselController _carouselController;

  final _itemExtent = 330.0;
  final _autoPlayDuration = const Duration(seconds: 4);

  @override
  void initState() {
    super.initState();

    _carouselController = CarouselController();

    // Animates to the next item every 4 seconds
    _timer = Timer.periodic(
      _autoPlayDuration,
          (_) => _animateToNextItem(),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _carouselController.dispose();

    super.dispose();
  }

  void _animateToNextItem() {
    _carouselController.animateTo(
      _carouselController.offset + _itemExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                backgroundBlendMode: BlendMode.softLight,
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Flexible(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 300,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 20,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: AspectRatio(
                          aspectRatio: 4 / 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/studio-jb12.appspot.com/o/landscape-placeholder-svgrepo-com.png?alt=media&token=f4189930-71d5-4426-aaa7-7a2d551a9dc2",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const AnimatedTextWidget(
                            texts: [
                              "Analytical Thinker",
                              "Backend Developer",
                              "Collaborative Innovator",
                              "Detail-Oriented",
                              "Eager-to-Learn",
                              "Full-Stack Engineer",
                              "Growth-Minded",
                              "Human-Centered Designer",
                              "Initiative-Taker",
                            ],
                          ),
                          Text(
                            'Jaynesh Bhandari',
                            style: Theme.of(context).textTheme.headlineLarge!,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  backgroundBlendMode: BlendMode.softLight,
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        "About Me",
                        style: Theme.of(context).textTheme.headlineMedium!,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'I am Jaynesh Bhandari, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere, erat quis mattis eleifend, nulla metus lobortis sapien, eu dapibus sapien sem sit amet nulla. Donec quis mauris metus. Quisque ante enim, sodales et tristique sit amet, tristique eu arcu. Integer egestas vestibulum gravida. Suspendisse fringilla aliquet lorem, vel consectetur metus rutrum ac. Nulla facilisi. Etiam accumsan dui eu gravida dictum. Proin ullamcorper neque id metus mattis, ac rhoncus orci rhoncus. Donec et purus sit amet libero tincidunt iaculis.',
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Skills",style: Theme.of(context).textTheme.headlineMedium,),
                          Container(
                            color: Colors.transparent,
                            constraints: BoxConstraints(
                              maxHeight: 150
                            ),
                            width: double.infinity,
                            child: CarouselView(
                              backgroundColor: Colors.transparent,
                              itemExtent: 150,
                              controller: _carouselController,
                              itemSnapping: true,
                              enableSplash: false,
                              scrollDirection: Axis.horizontal,
                              children: [
                                SkillCard(skillText: 'Java', logoURL: "assets/images/logos/java-logo.png"),
                                SkillCard(skillText: 'Spring Boot',logoURL: "assets/images/logos/spring-boot-logo.png"),
                                SkillCard(skillText: 'Flutter',logoURL: "assets/images/logos/flutter-logo.png"),
                                SkillCard(skillText: "Dart", logoURL: "assets/images/logos/Dart-logo.png"),
                                SkillCard(skillText: 'Python',logoURL: "assets/images/logos/python-logo.png"),
                                SkillCard(skillText: 'JavaScript',logoURL: "assets/images/logos/javascript-logo.png"),
                                SkillCard(skillText: 'HTML',logoURL: "assets/images/logos/HTML5-logo.png"),
                                SkillCard(skillText: 'CSS',logoURL: "assets/images/logos/css-logo.png"),
                                SkillCard(skillText: 'PHP',logoURL: "assets/images/logos/php-logo.png"),
                                SkillCard(skillText: 'My SQL',logoURL: "assets/images/logos/mysql-logo.png"),
                                SkillCard(skillText: 'C++',logoURL: "assets/images/logos/cpp-logo.png"),
                                SkillCard(skillText: 'JSON',logoURL: "assets/images/logos/json-logo.png"),
                                SkillCard(skillText: 'XML',logoURL: "assets/images/logos/xml-logo.png"),
                                SkillCard(skillText: 'Firebase',logoURL: "assets/images/logos/firebase-logo.png"),
                                SkillCard(skillText: 'AWS',logoURL: "assets/images/logos/AWS-logo.png"),
                                SkillCard(skillText: 'GCP',logoURL: "assets/images/logos/Gcp-logo.png"),
                                SkillCard(skillText: 'PostgreSQL',logoURL: "assets/images/logos/Postgresql-logo.png"),
                                SkillCard(skillText: 'Git',logoURL: "assets/images/logos/git-logo.png"),
                                SkillCard(skillText: 'Docker',logoURL: "assets/images/logos/docker-logo.png"),
                                SkillCard(skillText: 'Postman',logoURL: "assets/images/logos/postman-logo.png"),
                                SkillCard(skillText: 'Ubuntu & Linux',logoURL: "assets/images/logos/ubuntu-logo.png"),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
