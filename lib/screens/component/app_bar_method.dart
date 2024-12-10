import 'package:bhagwat/screens/component/title_app_bar_widhet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

AppBar AppBarMethod({
  required BuildContext context,
  required bool isButton,
  required bool isTitle,
  required bool isDropdownButton,
}) {
  return AppBar(
    leading: (isButton)
        ? IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
          )
        : null,
    backgroundColor: Colors.brown.shade900,
    actions: (isDropdownButton)
        ? [
            DropdownButton(
             dropdownColor: Colors.brown.shade800,
              borderRadius: BorderRadius.circular(10),
              items: const [
                DropdownMenuItem(
                  value: 'Sanskrit',
                  child: Text('Sanskrit',style: TextStyle(color: Colors.white),),
                ),
                DropdownMenuItem(
                  value: 'Hindi',
                  child: Text('Hindi',style: TextStyle(color: Colors.white)),
                ),
                DropdownMenuItem(
                  value: 'Gujarati',
                  child: Text('Gujarati',style: TextStyle(color: Colors.white)),
                ),
                DropdownMenuItem(
                  value: 'English',
                  child: Text('English',style: TextStyle(color: Colors.white)),
                ),
              ],
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
                size: 30,
              ),
              value: Provider.of<HomeProvider>(context, listen: true).languages,
              onChanged: (value) {
                Provider.of<HomeProvider>(context, listen: false)
                    .dropdown(value!);
              },
            ),
            const SizedBox(
              width: 20,
            )
          ]
        : [],
    title: (isTitle)
        ? const Text(
            'Bhagavad Geeta',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          )
        : const TitleAppBarWidget(),
  );
}
