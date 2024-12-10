import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';
import '../component/app_bar_method.dart';
import '../component/title_verses_widhet.dart';

class VersesPage extends StatelessWidget {
  const VersesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod(
          context: context,
          isButton: true,
          isTitle: false,
          isDropdownButton: true),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              opacity:8,
                image: NetworkImage(
                    'https://theshreekrishna.com/wp-content/uploads/2024/02/iphone-krishna-wallpaper5-585x1024.webp'),
                fit: BoxFit.cover)),
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount:
                  provider.chapterList[selectedChapterIndex].verses!.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  selectedVerseIndex = index;
                  Navigator.of(context).pushNamed("/verse");
                },
                child: Container(

                  margin: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleVersesWidhet(index: index),
                  ),
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}
