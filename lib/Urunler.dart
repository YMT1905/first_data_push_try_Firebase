class Urunler{
  String urunad;
  String urunid;
  int urunfiyat;

  Urunler(this.urunad, this.urunfiyat,this.urunid);

  factory Urunler.fromJson(String key, Map<dynamic,dynamic> json){
    return Urunler(key, json["urunad"], json["urunfiyat"],
    );
  }
}