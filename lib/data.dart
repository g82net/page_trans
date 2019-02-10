class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Fine Dust', category: 'AIR POLLUTION', imageUrl: 'assets/1.png',),
  new IntroItem(title: 'Occasionally wearing pants is a good idea.', category: 'WEATHER', imageUrl: 'assets/2.png',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'SPIRIT', imageUrl: 'assets/3.png',),
];