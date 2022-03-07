class Properties {
  final int id, phonenumber, rent, deposite, pincode;
  final String name, address, image, tellus, city, state, map, faddress;
  final bool isVerified;

  Properties({
    required this.id,
    required this.name,
    required this.address,
    required this.faddress,
    required this.image,
    required this.isVerified,
    required this.phonenumber,
    required this.rent,
    required this.deposite,
    required this.pincode,
    required this.tellus,
    required this.city,
    required this.state,
    required this.map,
  });
}

List<Properties> properties = [
  Properties(
    id: 0,
    name: "Krishna Wedding Farm",
    address: "Yogichawk,surat",
    image: "assets/properties/first.jpg",
    isVerified: true,
    city: "surat",
    state: "Gujarat",
    pincode: 395010,
    phonenumber: 7894561230,
    deposite: 10000,
    faddress: "Murlidhar Party plot,Near Dahiba Park,vesu",
    rent: 25000,
    tellus:
        "Murlidhar Party plot is a wedding venue based out of surat.Murlidhar Party plot is a wedding venue based out of surat.Murlidhar Party plot is a wedding venue based out of surat.",
    map: "Murlidhar Party plot is a wedding venue based out of surat.",
  ),
  Properties(
    id: 1,
    name: "Murlidhar Party Plot",
    address: "Vesu,surat",
    image: "assets/properties/partyplot.png",
    isVerified: false,
    city: "surat",
    state: "Gujarat",
    pincode: 395010,
    phonenumber: 7894561230,
    deposite: 10000,
    rent: 25000,
    faddress: "Murlidhar Party plot,Near Dahiba Park,vesu",
    tellus:
        "Murlidhar Party plot is a wedding venue based out of surat.Murlidhar Party plot is a wedding venue based out of surat.Murlidhar Party plot is a wedding venue based out of surat.Murlidhar Party plot is a wedding venue based out of surat.",
    map: "Murlidhar Party plot is a wedding venue based out of surat.",
  ),
];
