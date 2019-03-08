class Articles {
  final String url;
  final String title;
  final String urlToImage;

  const Articles(this.url, this.title, this.urlToImage);

  Articles.fromJson(Map jsonMap)
      : url = jsonMap['url'],
        title = jsonMap['title'],
        urlToImage = jsonMap['urlToImage'];

}
