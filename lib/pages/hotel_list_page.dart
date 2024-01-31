//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/hotel.dart';
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

class HotelListPage extends StatefulWidget {
  const HotelListPage({super.key});

  @override
  State<HotelListPage> createState() => _HotelListPageState();
}

class _HotelListPageState extends State<HotelListPage> {
  List<Hotel> hotels = [];
  bool loading = true;

  initstate() {
    super.initState();
    _fetchHotels();
  }

  Future<void> _fetchHotels() async {
    hotels = await fetchHotels();

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels Page'),
      ),
      body: Center(
        child: loading ? const CircularProgressIndicator() : buildHotels(),
      ),
    );
  }

  Widget buildHotels() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemCount: hotels.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.grey,
            thickness: 2.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          final Hotel hotel = hotels[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'name: ${hotel.name}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                'Classification: ${hotel.classification}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 2.0),
              Text(
                'city: ${hotel.city}',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                'Parking: ${hotel.parkingLotCapacity ?? "NA"}',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Divider(color: Colors.grey),
              if (hotel.reviews.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Be the first reviewer',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              if (hotel.reviews.isNotEmpty)
                ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final Review review = hotel.reviews[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('${review.score}'),
                      ),
                      title: Text(review.review ?? 'No written review'),
                      // subtitle: Text(review.description),
                      // trailing: Text(review.rating.toString(),),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(color: Colors.grey);
                  },
                  itemCount: hotel.reviews.length,
                ),
            ],
          );
        },
      ),
    );
  }
}
