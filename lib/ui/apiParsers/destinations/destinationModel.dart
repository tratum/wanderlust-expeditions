class DestinationModel {
  final String location;
  final String desc;
  final String imgLink;
  final String uid;
  final String subText;

  DestinationModel({
    required this.location,
    required this.desc,
    required this.imgLink,
    required this.uid,
    required this.subText,
  });

  factory DestinationModel.fromJson(Map<String, dynamic> json) {
    return DestinationModel(
        location: json['location'],
        desc: json['desc'],
        imgLink: json['imgLink'],
        uid: json['uid'],
        subText: json['subText']);
  }
}
