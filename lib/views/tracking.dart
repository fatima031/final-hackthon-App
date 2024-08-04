import 'package:flutter/material.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Frame18.png"),
              fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Track order',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Order ID : 4544858266',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),
                _buildTimeline(),
                const SizedBox(height: 20),
                const Text(
                  'Order Track',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                _buildOrderTrack(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimeline() {
    return Column(
      children: [
        _buildTimelineItem("04:30pm", "Confirmed", true),
        _buildTimelineItem("04:38pm", "Preprocessing", true),
        _buildTimelineItem("04:42pm", "On the way", true),
        _buildTimelineItem("04:46pm", "Delivered", false),
      ],
    );
  }

  Widget _buildTimelineItem(String time, String status, bool isCompleted) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 20,
              width: 2,
              color: isCompleted ? Colors.white : Colors.grey,
            ),
            Icon(
              Icons.circle,
              size: 12,
              color: isCompleted ? Colors.white : Colors.grey,
            ),
            Container(
              height: 20,
              width: 2,
              color: isCompleted ? Colors.white : Colors.grey,
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              status,
              style: TextStyle(
                color: isCompleted ? Colors.white : Colors.grey,
                fontSize: 16,
                fontWeight: isCompleted ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOrderTrack() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF2B2B2B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_640.jpg'),
            radius: 30,
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mr. Kemplas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '25 minutes on the way',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3B3B3B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            ),
            child: const Text(
              'Call',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}