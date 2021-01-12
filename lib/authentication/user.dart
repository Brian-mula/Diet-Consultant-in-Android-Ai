class User1 {
  String uid;
  User1({this.uid});
  
  Map<String, dynamic> toJson() =>{
    'Uid' : uid,
  };
}
