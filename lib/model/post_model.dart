class PostModel {
  int? id;
  String? body;
  int? postId;

  PostModel({this.id, this.body, this.postId});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    body = json['body'];
    postId = json['postId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['body'] = this.body;
    data['postId'] = this.postId;
    return data;
  }
}
