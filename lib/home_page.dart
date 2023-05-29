import 'package:flutter/material.dart';
import 'package:jeilova/feature.dart';

import 'pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jeilova',
          style: TextStyle(
            fontFamily: 'Cera',
            color: Pallete.mainFontColor,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: Pallete.mainFontColor,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            // Virtual Assistant Picture
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/virtualAssistant.png',
                    ),
                  ),
                ),
              )
            ],
          ),
          //Chat Bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(
              top: 5,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Good Morning, what task can I do for you?',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontFamily: 'Cera',
                ),
              ),
            ),
          ),
          //Suggestion List
          Container(
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 5, left: 22),
            child: const Text(
              'Here are a few features',
              style: TextStyle(
                fontFamily: 'Cera',
                color: Pallete.mainFontColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Features List
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'Open AI',
                descriptionText:
                    'A smarter way to be stay informed and organized with AI',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'AI Image Generator',
                descriptionText:
                    'Get creative and stay inspired with your personal image generation assistant powered by AI',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                descriptionText:
                    'Get the best of both worlds with a voice assistant powered by AI',
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(
          Icons.mic,
        ),
      ),
    );
  }
}
