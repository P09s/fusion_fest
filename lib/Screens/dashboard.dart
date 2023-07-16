import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('assets/images/dp.png'),
                    radius: 40.0,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Your Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Followers: 100K',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Events Overview',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildMetricCard(
                          title: 'Views',
                          count: '1.2M',
                        ),
                        _buildMetricCard(
                          title: 'Events Created',
                          count: '2.5K',
                        ),
                        _buildMetricCard(
                          title: 'Likes',
                          count: '10K',
                        ),
                        _buildMetricCard(
                          title: 'Comments',
                          count: '2K',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Events',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  _buildVideoCard(
                    title: 'Event Title 1',
                    thumbnail: 'assets/images/event.jpg',
                    views: '50K',
                    duration: '12:34',
                  ),
                  SizedBox(height: 8.0),
                  _buildVideoCard(
                    title: 'Event Title 2',
                    thumbnail: 'assets/images/event.jpg',
                    views: '100K',
                    duration: '8:45',
                  ),
                  SizedBox(height: 8.0),
                  _buildVideoCard(
                    title: 'Event Title 3',
                    thumbnail: 'assets/images/event.jpg',
                    views: '75K',
                    duration: '15:20',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Comments',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  _buildCommentCard(
                    commenter: 'User 1',
                    comment: 'Great video!',
                    likes: '10',
                  ),
                  SizedBox(height: 8.0),
                  _buildCommentCard(
                    commenter: 'User 2',
                    comment: 'I learned a lot, thanks!',
                    likes: '5',
                  ),
                  SizedBox(height: 8.0),
                  _buildCommentCard(
                    commenter: 'User 3',
                    comment: 'Could you please make a tutorial on that?',
                    likes: '3',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricCard({required String title, required String count}) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              count,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoCard({required String title, required String thumbnail, required String views, required String duration}) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(thumbnail),
            fit: BoxFit.cover,
            height: 160.0,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Views: $views',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Duration: $duration',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentCard({required String commenter, required String comment, required String likes}) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  commenter,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 16.0,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      likes,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              comment,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

