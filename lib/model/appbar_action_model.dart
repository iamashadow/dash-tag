class AppBarAction {
  final String title;
  final List<Category>? categories;

  AppBarAction({required this.title, this.categories});

  factory AppBarAction.fromJson(Map<String, dynamic> json) {
    return AppBarAction(
      title: json['title'],
      categories: json['cat'] != null
          ? (json['cat'] as List).map((i) => Category.fromJson(i)).toList()
          : null,
    );
  }
}

class Category {
  final String title;
  final List<SubCategory>? subCategories;

  Category({required this.title, this.subCategories});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'],
      subCategories: json['subCat'] != null
          ? (json['subCat'] as List)
              .map((i) => SubCategory.fromJson(i))
              .toList()
          : null,
    );
  }
}

class SubCategory {
  final String title;

  SubCategory({required this.title});

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      title: json['title'],
    );
  }
}
