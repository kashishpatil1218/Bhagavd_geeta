import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';
import '../component/app_bar_method.dart';
import '../component/title_widhet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown,
      appBar: AppBarMethod(
        context: context,
        isButton: false,
        isTitle: true,
        isDropdownButton: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/18/81/35/1881357c03465883745cfaf08b2ec20c.jpg'),fit: BoxFit.cover)),
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: provider.chapterList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  selectedChapterIndex = index;
                  Navigator.of(context).pushNamed('/verses');
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black54
                    ,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleWidhet(index: index),
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
