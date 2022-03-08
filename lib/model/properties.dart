class Properties {
  final int id, phonenumber, rent, deposite, pincode;
  final String name, address, image, tellus, city, state, map, faddress, type;
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
    required this.type,
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
    tellus: '''
\nMurlidhar Party Plot is a wedding venue based out of Vadodara. Wedding ceremonies require a lot of thingsthat one needs to keep in mind and one .... \n\nLorem Ipsum is simply dummy text of the printing and
typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially
unchanged. \n\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
like Aldus PageMaker including versions of Lorem Ipsum.
  ''',
    map: "Murlidhar Party plot is a wedding venue based out of surat.",
    type: 'Party Plot',
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
      type: 'Party Plot'),
  Properties(
      id: 2,
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
      type: 'Party Plot'),
  Properties(
      id: 3,
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
      type: 'Party Plot'),
];
