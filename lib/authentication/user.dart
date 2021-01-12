class User {
  String uid;
  User({this.uid});
  
  Map<String, dynamic> toJson() =>{
    'Uid' : uid,
  };
}
