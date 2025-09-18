import 'package:flutter/material.dart';
import 'package:porfolio_app/util.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Info',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              'Email: suhlaingoo7723@gmail.com',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Mobile Number: 09880683420, 09766421457',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'WhatsApp:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  '+959766421457',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Github Profile:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    showSuccessAlert(context, "https://github.com/sho7798/");
                  },
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      'https://github.com/sho7798/',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Linkedin Profile:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    final Uri uri = Uri(
                      scheme: 'https',
                      host: 'www.linkedin.com',
                      path: 'in/su-hlaing-ba5712188/',
                    );
                    externalLaunchUrl(uri);
                  },
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      'https://www.linkedin.com/in/su-hlaing-ba5712188/',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instagram Profile:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    final Uri uri = Uri(
                      scheme: 'https',
                      host: 'www.instagram.com',
                      path: 'susu_7723/',
                    );
                    externalLaunchUrl(uri);
                  },
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      'https://www.instagram.com/susu_7723/',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
