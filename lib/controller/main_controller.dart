import 'package:carousel_slider/carousel_controller.dart';
import 'package:dash_and_tag_web_site/model/appbar_action_model.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainController extends GetxController {
  final CarouselController controller = CarouselController();
  final RxInt hoverIndex = 0.obs;
  void setHoverIndex(int? index) {
    hoverIndex.value = index!;
  }

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

//   WebViewController webViewController = WebViewController()
//     ..setJavaScriptMode(JavaScriptMode.unrestricted)
//     ..loadFlutterAsset("assets/images/www/navbar.html");
}
