class AppBarAction {
  final String title;
  final String path;
  final List<Category>? categories;

  AppBarAction({required this.title, this.categories, required this.path});

  factory AppBarAction.fromJson(Map<String, dynamic> json) {
    return AppBarAction(
      title: json['title'],
      path: json['path'],
      categories: json['cat'] != null
          ? (json['cat'] as List).map((i) => Category.fromJson(i)).toList()
          : null,
    );
  }
}

class Category {
  final String title;
  final String path;
  final List<Category>? categories;

  Category({required this.title, this.categories, required this.path});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'],
      path: json['path'],
      categories: json['subCat'] != null
          ? (json['subCat'] as List).map((i) => Category.fromJson(i)).toList()
          : null,
      // json['subCat'] != null
      //     ? (json['subCat'] as List)
      //         .map((i) => SubCategory.fromJson(i))
      //         .toList()
      //     : null,
    );
  }
}

class SubCategory {
  final String title;
  final String path;
  SubCategory({required this.title, required this.path});

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      title: json['title'],
      path: json['path'],
    );
  }
}
