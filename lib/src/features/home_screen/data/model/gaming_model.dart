class GamingListModel {
  List<GamingItemModel> items;

  GamingListModel({required this.items});
}

class GamingItemModel {
  String title;
  String imageUrl;

  GamingItemModel({required this.title, required this.imageUrl});
}
