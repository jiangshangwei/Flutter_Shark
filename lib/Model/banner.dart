class BannerModel{
  String desc;
  int id;
  String imagePath;
  int order;
  String title;
  int type;
  String url;

  BannerModel(this.desc,this.id,this.imagePath,this.order,this.title,this.type,this.url);

  factory BannerModel.fromJson(Map<String,dynamic> json){
    return BannerModel(json["desc"], json["id"], json["imagePath"], json["order"], json["title"], json["type"], json["url"]);
  }
}