import 'package:flutter/material.dart';
import 'package:fsktm_eventhub/event_data.dart'; // Import the event data

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Initially display all events
  List<Map<String, dynamic>> filteredEvents = events;

  // Function to filter events based on the search query
  void searchEvents(String query) {
    final results = events.where((event) {
      return event['eventName']!
          .toLowerCase()
          .contains(query.toLowerCase()); // Case-insensitive search
    }).toList();

    setState(() {
      filteredEvents = results; // Update filtered events list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF081033), // Set background color to 0xFF081033
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5, spreadRadius: 2),
                ],
              ),
              child: TextField(
                onChanged: searchEvents, // Trigger the search function on text change
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  suffixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Display filtered events in a ListView
            Expanded(
              child: filteredEvents.isEmpty
                  ? Center(
                      child: Text(
                        'No events found',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredEvents.length,
                      itemBuilder: (context, index) {
                        final event = filteredEvents[index];
                        // Modify this section to use the event data for the image and details
                        return _buildEventCard(
                          context,
                          eventName: event['eventName']!,
                          eventDate: event['eventDate']!,
                          imagePath: event['imagePath']!,
                          detailPage: event['detailPage']!, // Provide detail page widget
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(
    BuildContext context, {
    required String eventName,
    required String eventDate,
    required String imagePath,
    required Widget detailPage,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailPage),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image.asset(imagePath, width: 60, height: 60), // Event image on the left
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    eventDate,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
