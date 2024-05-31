import 'package:carousel_slider/carousel_controller.dart';
import 'package:dash_and_tag_web_site/model/appbar_action_model.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  // final List appbarActions = [
  //   {"title": 'Home'},
  //   {
  //     "title": 'About',
  //     "cat": [
  //       {"title": 'About CRV Resources'},
  //       {"title": 'Mission & Vision'},
  //     ]
  //   },
  //   {"title": 'Profile'},
  //   {
  //     "title": 'Products',
  //     "cat": [
  //       {
  //         "title": 'Mens',
  //         "subCat": [
  //           {"title": 'T-Shirts'},
  //           {"title": 'Shirts'},
  //           {"title": 'Pants'},
  //           {"title": 'Jackets'},
  //         ]
  //       },
  //       {
  //         "title": 'Womens',
  //         "subCat": [
  //           {"title": 'T-Shirts'},
  //           {"title": 'Shirts'},
  //           {"title": 'Pants'},
  //           {"title": 'Jackets'},
  //         ]
  //       },
  //       {
  //         "title": 'Boys',
  //         "subCat": [
  //           {"title": 'T-Shirts'},
  //           {"title": 'Shirts'},
  //           {"title": 'Pants'},
  //           {"title": 'Jackets'},
  //         ]
  //       },
  //       {
  //         "title": 'Girls',
  //         "subCat": [
  //           {"title": 'T-Shirts'},
  //           {"title": 'Shirts'},
  //           {"title": 'Pants'},
  //           {"title": 'Jackets'},
  //         ]
  //       },
  //     ]
  //   },
  //   {
  //     "title": 'Services',
  //     "cat": [
  //       {"title": 'Global Sourcing'},
  //       {"title": 'Development'},
  //       {"title": 'Quality'},
  //     ],
  //   },
  //   {"title": 'Our Client'},
  //   {"title": 'Contact'},
  // ];

  final List<AppBarAction> appbarActions = [
    AppBarAction(title: 'Home'),
    AppBarAction(
      title: 'About',
      categories: [
        Category(title: 'About CRV Resources'),
        Category(title: 'Mission & Vision'),
      ],
    ),
    AppBarAction(title: 'Profile'),
    AppBarAction(
      title: 'Products',
      categories: [
        Category(
          title: 'Mens',
          subCategories: [
            SubCategory(title: 'T-Shirts'),
            SubCategory(title: 'Shirts'),
            SubCategory(title: 'Pants'),
            SubCategory(title: 'Jackets'),
          ],
        ),
        Category(
          title: 'Womens',
          subCategories: [
            SubCategory(title: 'T-Shirts'),
            SubCategory(title: 'Shirts'),
            SubCategory(title: 'Pants'),
            SubCategory(title: 'Jackets'),
          ],
        ),
        Category(
          title: 'Boys',
          subCategories: [
            SubCategory(title: 'T-Shirts'),
            SubCategory(title: 'Shirts'),
            SubCategory(title: 'Pants'),
            SubCategory(title: 'Jackets'),
          ],
        ),
        Category(
          title: 'Girls',
          subCategories: [
            SubCategory(title: 'T-Shirts'),
            SubCategory(title: 'Shirts'),
            SubCategory(title: 'Pants'),
            SubCategory(title: 'Jackets'),
          ],
        ),
      ],
    ),
    AppBarAction(
      title: 'Services',
      categories: [
        Category(title: 'Global Sourcing'),
        Category(title: 'Development'),
        Category(title: 'Quality'),
      ],
    ),
    AppBarAction(title: 'Our Client'),
    AppBarAction(title: 'Contact'),
  ];

  final CarouselController carouselController = CarouselController();
}
