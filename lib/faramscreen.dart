import 'package:flutter/material.dart';
import 'package:pradeshshava/pradeshshava.dart';
import 'package:pradeshshava/suchanascreen.dart';

class FaramScreen extends StatefulWidget {
  const FaramScreen({super.key});

  @override
  State<FaramScreen> createState() => _FaramScreenState();
}

class _FaramScreenState extends State<FaramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: const Color(0xFF9B0F18), // deep red
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  //add ac cirualr dummy avatar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Icon(
                      Icons.logo_dev,
                      size: 40,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'मधेश प्रदेश सभा',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'जनकपुरधाम, धनुषा, नेपाल',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Gallery label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Icon(
                      Icons.image,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    //faram nepali text
                    'फाराम',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Bordered container (image placeholder)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                ),

                //also text comming soon
                child: Text(
                  '  Coming Soon',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),

            //add elevated button for suchana screen and faramscreen
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuchanaScreen()),
                );
              },
              child: const Text('Suchana'),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PradeshSabhaScreen()),
                );
              },
              child: const Text('pradesh sabha'),
            ),
          ],
        ),
      ),
    );
  }
}
