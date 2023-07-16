import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:fusion_fest/Screens/event_management.dart';

class ScreenNavigation extends StatefulWidget {
  @override
  _ScreenNavigationState createState() => _ScreenNavigationState();
}

class _ScreenNavigationState extends State<ScreenNavigation> {
  int _currentScreen = 1;
  int _totalScreens = 4;

  String publicPrivate = '';
  String title = '';
  String description = '';
  String organizationName = '';
  String name = '';
  String contactNo = '';
  String dateTime = '';
  String venue = '';
  String duration = '';
  String payment = '';

  void _navigateToNextScreen() {
    setState(() {
      _currentScreen++;
      if (_currentScreen > _totalScreens) {
        if (_currentScreen == _totalScreens + 1) {
          // Navigate to a new unique screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UniqueScreen(
              publicPrivate: publicPrivate,
              title: title,
              description: description,
              organizationName: organizationName,
              name: name,
              contactNo: contactNo,
              dateTime: dateTime,
              venue: venue,
              duration: duration,
              payment: payment,
            )),
          );
        }
        // Reset the current screen to 1
        _currentScreen = 1;
      }
    });
  }

  void _navigateToPreviousScreen() {
    setState(() {
      if (_currentScreen == 1) {
        // Navigate to a different screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventManagementScreen()),
        );
      } else {
        _currentScreen--;
        if (_currentScreen < 1) {
          _currentScreen = 1;
        }
      }
    });
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Color.fromARGB(255, 173, 33, 243) : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: Stack(
        children: [
          _currentScreen == 1
              ? Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Public/Private:',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 'Public',
                            groupValue: publicPrivate,
                            onChanged: (value) {
                              setState(() {
                                publicPrivate = value.toString();
                              });
                            },
                          ),
                          Text('Public'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 'Private',
                            groupValue: publicPrivate,
                            onChanged: (value) {
                              setState(() {
                                publicPrivate = value.toString();
                              });
                            },
                          ),
                          Text('Private'),
                        ],
                      ),
                    ],
                  ),
                )
              : _currentScreen == 2
                  ? Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  title = value;
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Description:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  description = value;
                                });
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Organization Name:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  organizationName = value;
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : _currentScreen == 3
                      ? Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name:',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      name = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Contact No:',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      contactNo = value;
                                    });
                                  },
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Date - Time:',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      dateTime = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Venue:',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      venue = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Duration:',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      duration = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : _currentScreen == 4
                          ? Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payment:',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      onChanged: (value) {
                                        setState(() {
                                          payment = value;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Screen $_currentScreen',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: _navigateToPreviousScreen,
              child: Icon(Icons.arrow_back, color: Colors.black),
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _totalScreens,
                (index) => _buildDot(index + 1 == _currentScreen),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _currentScreen < _totalScreens
          ? FloatingActionButton(
              onPressed: _navigateToNextScreen,
              child: Icon(Icons.arrow_forward),
            )
          : _currentScreen == _totalScreens
              ? FloatingActionButton(
                  onPressed: _navigateToNextScreen,
                  child: Icon(Icons.arrow_forward),
                )
              : null,
    );
  }
}

class UniqueScreen extends StatelessWidget {
  final String publicPrivate;
  final String title;
  final String description;
  final String organizationName;
  final String name;
  final String contactNo;
  final String dateTime;
  final String venue;
  final String duration;
  final String payment;

  const UniqueScreen({
    required this.publicPrivate,
    required this.title,
    required this.description,
    required this.organizationName,
    required this.name,
    required this.contactNo,
    required this.dateTime,
    required this.venue,
    required this.duration,
    required this.payment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cofirmation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Event Details:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Public/Private:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                publicPrivate,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Title:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Description:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Organization Name:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                organizationName,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Contact Information:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Name:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Contact No:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                contactNo,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Event Schedule:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Date - Time:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                dateTime,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Venue:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                venue,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Duration:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                duration,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Payment:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                payment,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DifferentScreen(contactNo: '', duration: '', description: '', title: '', venue: '',)),
          );
        },
        child: Icon(Icons.check),
        backgroundColor: Colors.purple,
      ),
    );
  }
}

class DifferentScreen extends StatelessWidget {
  final String title;
  final String description;
  final String venue;
  final String duration;
  final String contactNo;

  const DifferentScreen ({
    required this.title,
    required this.description,
    required this.venue,
    required this.duration,
    required this.contactNo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Your Events'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => EventManagementScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Successfully Created !!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Event',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/event.jpg', // Replace with the actual path to the image
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            title,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Description:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            description,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Venue:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            venue,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Duration:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            duration,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Contact No:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            contactNo,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






