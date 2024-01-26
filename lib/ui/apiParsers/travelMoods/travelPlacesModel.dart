class TravelMoodsModel {
  final String location;
  final String desc;
  final String imgLink;
  final String uid;

  TravelMoodsModel({
    required this.location,
    required this.desc,
    required this.imgLink,
    required this.uid,
  });

  factory TravelMoodsModel.fromJson(Map<String, dynamic> json) {
    return TravelMoodsModel(
        location: json['location'],
        desc: json['desc'],
        imgLink: json['imgLink'],
        uid: json['uid']);
  }
}
