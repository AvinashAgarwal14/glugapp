import './news.dart';
List newsList = sendNewsList();
class NewsItem {
  NewsItem({
    this.title,
    this.imageUrl,
    this.author,
    this.description,
    this.url
  });

  final String title;
  final String imageUrl;
  final String author;
  final String description;
  final String url;
}

List<NewsItem> createNewsItemList() {

  List<NewsItem> items = new List();
  for(int i =0;i<newsList.length;i++){
    var _title = newsList[i]['title'];
    var _imageUrl = newsList[i]['urlToImage'];
    var _author = newsList[i]['author'];
    var _description = newsList[i]['description'];
    var _url = newsList[i]['url'];
    items.add(new NewsItem(title: '$_title', imageUrl: '$_imageUrl', author: '$_author', description: '$_description', url: '$_url'));
  }
  return items;
}

final sampleItems = createNewsItemList();
