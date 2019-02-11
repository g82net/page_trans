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

//geolocation info
//getWeather info
//get data for dust info

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Fine Dust', category: 'AIR POLLUTION', imageUrl: 'assets/1.png',),
  new IntroItem(title: 'Occasionally wearing pants is a good idea.', category: 'WEATHER', imageUrl: 'assets/2.png',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'SPIRIT', imageUrl: 'assets/3.png',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'CAMERA', imageUrl: 'assets/Back2.png',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'GALLERY', imageUrl: 'assets/_back1.png',),
];

