class TrendingListModel {
  List<TrendingItemModel> items;

  TrendingListModel({required this.items});
}

class TrendingItemModel {
  String title;
  String imageUrl;

  TrendingItemModel({required this.title, required this.imageUrl});
}
