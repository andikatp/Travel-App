import 'destination_model.dart';

class ListDestination {
  ListDestination._();
  static List<DestinationModel> destination = [
    DestinationModel(
        image: 'assets/1.jpg',
        name: 'Mount Bromo',
        location: 'Indonesia',
        date: '25 March - 29 March, 2022'),
    DestinationModel(
        image: 'assets/2.jpg',
        name: 'ColosseumR',
        location: 'Rome, Italy',
        date: '05 April - 12 April, 2022'),
    DestinationModel(
        image: 'assets/3.jpg',
        name: 'Gundam Statue',
        location: 'Japan',
        date: '09 April - 12 April, 2022'),
    DestinationModel(
        image: 'assets/4.jpg',
        name: 'Skiing Place',
        location: 'Switzerland',
        date: '30 Mei - 3 June, 2022'),
    DestinationModel(
        image: 'assets/5.jpg',
        name: 'Orange Forest',
        location: 'Banda Aceh',
        date: '12 June - 29 June, 2022')
  ];
}
