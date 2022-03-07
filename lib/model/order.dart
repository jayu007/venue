import 'package:venue_user/model/properties.dart';

class order {
  final int id;
  final String name, address, veneu;
  final DateTime startdate, enddate, bookdate;
  final int pnumber;
  order(this.id, this.name, this.startdate, this.enddate, this.bookdate,
      this.address, this.pnumber, this.veneu);
}

List<order> todayevent = <order>[
  order(
    1,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 11, 00, 00),
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[0].address,
    7894561320,
    properties[0].name,
  ),
  order(
    2,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 01, 03, 13, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[0].address,
    7894561320,
    properties[0].name,
  ),
];
List<order> upcomingevent = <order>[
  order(
    1,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 11, 00, 00),
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[1].address,
    7894561320,
    properties[1].name,
  ),
  order(
    2,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 01, 03, 13, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[0].address,
    7894561320,
    properties[0].name,
  ),
  order(
    3,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 01, 03, 13, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[1].address,
    7894561320,
    properties[1].name,
  ),
  order(
    4,
    "Axit Rakholiya",
    DateTime(2022, 01, 03, 12, 00, 00),
    DateTime(2022, 01, 03, 13, 00, 00),
    DateTime(2022, 12, 01, 10, 00, 00),
    properties[0].address,
    7894561320,
    properties[0].name,
  ),
];
