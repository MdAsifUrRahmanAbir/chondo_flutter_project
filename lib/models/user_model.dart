class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? userName;
  String? phoneNumber;
  String? gender;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.userName, this.phoneNumber, this.gender});

  // receiving data from server
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      userName: map['userName'],
      phoneNumber: map['phoneNumber'],
      gender: map['gender']
    );
  }

  //  sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'userName': userName,
      'phoneNumber': phoneNumber,
      'gender': gender,
    };
  }
}