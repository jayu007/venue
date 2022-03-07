// List<UserDetail> userDetailFromJson(String str) =>
//     List<UserDetail>.from(json.decode(str).map((x) => UserDetail.fromJson(x)));
//
// String userDetailToJson(List<UserDetail> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetail {
  UserDetail({
    required this.ownerId,
    required this.name,
    required this.email,
    required this.mobileNo,
    required this.addressLine,
    required this.city,
    required this.state,
    required this.pincode,
    required this.password,
    required this.beneficiallyName,
    required this.upiId,
  });

  int ownerId;
  String name;
  String email;
  int mobileNo;
  String addressLine;
  String city;
  String state;
  int pincode;
  String password;
  String beneficiallyName;
  String upiId;

  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
      ownerId: json["owner_id"],
      name: json["name"],
      email: json["email"],
      mobileNo: json["mobile_no"],
      addressLine: json["address_line"],
      city: json["city"],
      state: json["state"],
      pincode: json["pincode"],
      password: json["password"],
      beneficiallyName: json["beneficially_name"],
      upiId: json["upi_id"],
    );
  }

  Map<String, dynamic> toJson() => {
        "owner_id": ownerId,
        "name": name,
        "email": email,
        "mobile_no": mobileNo,
        "address_line": addressLine,
        "city": city,
        "state": state,
        "pincode": pincode,
        "password": password,
        "beneficially_name": beneficiallyName,
        "upi_id": upiId,
      };
}
