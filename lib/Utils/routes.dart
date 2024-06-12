import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/dash_and_tag_resources.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/men_jeans/mens_jeans.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/polo_shirts/polo_shirts.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/tshirt_page/tshirt_page.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/mission_vission_image_and_description.dart';
import 'package:get/get.dart';

import '../Pages/home_page/home_page.dart';

class AppRoutes {
  static String home = '/home';
  static String aboutResources = '/about_resources';
  static String missionVision = '/mission_vision';
  static String profile = '/profile';
  static String mens = '/products/mens';
  static String mensjeans = '/products/mens/jeans';
  static String menstshirts = '/products/mens/tshirts';
  static String menspoloshirts = '/products/mens/poloshirts';
  static String mensshirtspants = '/products/mens/shirtpants';
  static String menshoodies = '/products/mens/hoodies';
  static String mensshortscargo = '/products/mens/shortscargo';
  static String mensjackets = '/products/mens/jackets';
  static String menssweaters = '/products/mens/sweaters';
  //same for womens
  static String womens = '/products/womens';
  static String womensjeans = '/products/womens/jeans';
  static String womenstshirts = '/products/womens/tshirts';
  static String womenspoloshirts = '/products/womens/poloshirts';
  static String womensshirtspants = '/products/womens/shirtpants';
  static String womenshoodies = '/products/womens/hoodies';
  static String womensshortscargo = '/products/womens/shortscargo';
  static String womensjackets = '/products/womens/jackets';
  static String womenssweaters = '/products/womens/sweaters';
  //same for boys
  static String boys = '/products/boys';
  static String boysjeans = '/products/boys/jeans';
  static String boystshirts = '/products/boys/tshirts';
  static String boyspoloshirts = '/products/boys/poloshirts';
  static String boysshirtspants = '/products/boys/shirtpants';
  static String boyshoodies = '/products/boys/hoodies';
  static String boyshortscargo = '/products/boys/shortscargo';
  static String boysjackets = '/products/boys/jackets';
  static String boyssweaters = '/products/boys/sweaters';
  //same for girls
  static String girls = '/products/girls';
  static String girlsjeans = '/products/girls/jeans';
  static String girlstshirts = '/products/girls/tshirts';
  static String girlspoloshirts = '/products/girls/poloshirts';
  static String girlsshirtspants = '/products/girls/shirtpants';
  static String girlshoodies = '/products/girls/hoodies';
  static String girlshortscargo = '/products/girls/shortscargo';
  static String girlsjackets = '/products/girls/jackets';
  static String girlssweaters = '/products/girls/sweaters';

  static String services = '/services';
  static String globalsources = '/services/globalsources';
  static String development = '/services/development';
  static String quality = '/services/quality';
  static String clients = '/clients';
  static String contact = '/contact';

  static List<GetPage<dynamic>> pages = [
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: aboutResources, page: () => DashAndTagResources()),
    GetPage(
        name: missionVision, page: () => MissionVissionImageAndDescription()),
    GetPage(name: mensjeans, page: () => MeansJeans()),
    GetPage(name: menstshirts, page: () => const TshirtPage()),
    GetPage(name: menspoloshirts, page: () => PoloShirts()),
    GetPage(name: mensjeans, page: () => MeansJeans()),
  ];
}
