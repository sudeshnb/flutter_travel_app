class PagesData {
  final int id;
  final String title;
  final String subTitle;
  final String image;

  PagesData({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<PagesData> pages = [
  PagesData(
    id: 0,
    title:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    subTitle:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    image: 'assets/07.jpg',
  ),
  PagesData(
    id: 1,
    title:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    subTitle:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    image: 'assets/02.jpg',
  ),
  PagesData(
    id: 2,
    title:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    subTitle:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    image: 'assets/03.jpg',
  ),
  PagesData(
    id: 3,
    title:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    subTitle:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    image: 'assets/04.jpg',
  ),
  PagesData(
    id: 4,
    title:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    subTitle:
        'Flutter gives us a lot of standard views to use in our projects, but from time to time we need to create custom views. ',
    image: 'assets/05.jpg',
  ),
];

class Menu {
  final int id;
  final String name;

  Menu({required this.id, required this.name});
}

List<Menu> menu = [
  Menu(id: 0, name: 'Most Popular'),
  Menu(id: 1, name: 'Recommended'),
  Menu(id: 2, name: 'Treanding'),
  Menu(id: 3, name: 'Natural'),
  Menu(id: 4, name: 'Countryside'),
];

class Item {
  final int id;
  final String titel;
  final String image;
  final String location;
  final String description;
  final String price;
  final String rating;
  final String days;
  final String itinerary;
  final String weather;
  final List category;

  Item({
    required this.id,
    required this.image,
    required this.titel,
    required this.location,
    required this.description,
    required this.price,
    required this.rating,
    required this.days,
    required this.itinerary,
    required this.weather,
    required this.category,
  });
}

List<Item> items = [
  Item(
    id: 0,
    image: 'assets/07.jpg',
    titel: 'Banff National Park',
    location: 'Alberta, Canada',
    description:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit""",
    price: '\$1250',
    rating: '4.8',
    days: '4 days',
    itinerary:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    weather: '5 C',
    category: ['MOUNTAINS', 'NATURE', 'BEAUTY'],
  ),
  Item(
    id: 0,
    image: 'assets/09.jpg',
    titel: 'Banff National Park',
    location: 'Alberta, Canada',
    description:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitat ut aliquip ex ea commodo consequat. esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    price: '\$1250',
    rating: '4.8',
    days: '4 days',
    itinerary:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    weather: '5 C',
    category: ['MOUNTAINS', 'NATURE', 'BEAUTY'],
  ),
  Item(
    id: 0,
    image: 'assets/08.jpg',
    titel: 'Banff National Park',
    location: 'Alberta, Canada',
    description:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    price: '\$1250',
    rating: '4.8',
    days: '4 days',
    itinerary:
        """Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
    weather: '5 C',
    category: ['MOUNTAINS', 'NATURE', 'BEAUTY'],
  ),
];

class Categories {
  final int id;
  final String image;
  final String name;

  Categories({required this.id, required this.image, required this.name});
}

List<Categories> categories = [
  Categories(id: 0, image: 'assets/01.jpg', name: 'Mountains'),
  Categories(id: 1, image: 'assets/02.jpg', name: 'Countryside'),
  Categories(id: 2, image: 'assets/08.jpg', name: 'Snowfall'),
  Categories(id: 3, image: 'assets/05.jpg', name: 'Natura'),
  Categories(id: 4, image: 'assets/03.jpg', name: 'Mountains'),
  Categories(id: 5, image: 'assets/07.jpg', name: 'Countryside'),
];

class BottonNavData {
  final int id;

  final String image;

  BottonNavData({required this.id, required this.image});
}

List<BottonNavData> navData = [
  BottonNavData(id: 0, image: 'assets/icons/home.svg'),
  BottonNavData(id: 1, image: 'assets/icons/calendar.svg'),
  BottonNavData(id: 2, image: 'assets/icons/comment.svg'),
  BottonNavData(id: 3, image: 'assets/icons/user.svg'),
];
