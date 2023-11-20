import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}
final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Fugiat aliquip pariatur duis eu velit. Amet mollit culpa eu aliqua culpa adipisicing non commodo ex pariatur dolore voluptate. Occaecat ad consequat ipsum ad dolore excepteur amet. Sunt ea ut est nostrud incididunt irure laborum qui ullamco excepteur incididunt. Aliquip ex labore nisi officia nisi ipsum nulla officia labore esse consectetur. Excepteur nostrud minim do deserunt exercitation enim. Dolore deserunt esse culpa fugiat incididunt esse nostrud laboris duis proident adipisicing anim.', 'assets/images/1.png'),
  SlideInfo('Busca la comida', 'Enim non esse velit irure aliqua labore laboris voluptate eiusmod veniam. Ullamco et elit in ut adipisicing deserunt anim pariatur ut. Enim deserunt ut Lorem veniam mollit et excepteur deserunt pariatur sit.', 'assets/images/2.png'),
  SlideInfo('Busca la comida', 'Lorem reprehenderit dolor cupidatat sit. Exercitation pariatur consectetur duis sint. Minim pariatur nostrud aliquip amet ex velit mollit aliquip veniam. Cupidatat enim sint anim velit occaecat eu ullamco laboris. Velit nulla minim nostrud irure magna tempor proident mollit amet eu qui commodo.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});
  static const name = 'tutorial_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map((slideData) => _Slide(title: slideData.title, caption: slideData.caption, imageUrl: slideData.imageUrl)).toList()
      ),
    );
  }
}


class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}