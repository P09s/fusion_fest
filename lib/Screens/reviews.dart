import 'package:flutter/material.dart';

class Review {
  final String name;
  final String comment;
  final int rating;

  Review(this.name, this.comment, this.rating);
}

class Reviews extends StatelessWidget {
  Reviews({Key? key}) : super(key: key);

  final List<Review> reviews = [
    Review('John Doe', 'Great Event!', 5),
    Review('Jane Smith', 'It was a nice one.', 4),
    Review('Mike Johnson', 'It was an average event', 3),
  ];

  void navigateToReviewDetail(BuildContext context, Review review) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReviewDetailScreen(review: review)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (BuildContext context, int index) {
          final review = reviews[index];
          return GestureDetector(
            onTap: () {
              navigateToReviewDetail(context, review);
            },
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text(
                    review.name[0],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  review.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      review.comment,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: List.generate(review.rating, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      }),
                    ),
                    SizedBox(height: 8.0),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ReviewDetailScreen extends StatelessWidget {
  final Review review;

  const ReviewDetailScreen({required this.review});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Detail'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              review.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              review.comment,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: List.generate(review.rating, (index) {
                return Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
