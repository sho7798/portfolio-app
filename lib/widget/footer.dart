import 'package:flutter/material.dart';
import 'package:porfolio_app/util.dart';

Widget footer(BuildContext context) {
  return SizedBox(
    width: MediaQuery.sizeOf(context).width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              final Uri uri = Uri(
                scheme: 'https',
                host: 'www.facebook.com',
                path: 'su.hlaing.44806',
              );
              externalLaunchUrl(uri);
            },
            child: Image.asset(
              'assets/icons/facebook.png',
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              final Uri uri = Uri(
                scheme: 'https',
                host: 'www.instagram.com',
                path: 'susu_7723/',
              );
              externalLaunchUrl(uri);
            },
            child: Image.asset(
              'assets/icons/instagram.png',
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              final Uri uri = Uri(
                scheme: 'https',
                host: 'www.linkedin.com',
                path: 'in/su-hlaing-ba5712188/',
              );
              externalLaunchUrl(uri);
            },
            child: Image.asset(
              'assets/icons/linkedin.png',
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              final Uri uri = Uri(
                scheme: 'https',
                host: 'www.twitter.com',
                path: 'xxxx/',
              );
              externalLaunchUrl(uri);
            },
            child: Image.asset(
              'assets/icons/twitter.png',
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              final Uri uri = Uri(
                scheme: 'https',
                host: 'www.github.com',
                path: 'sho7798/',
              );
              externalLaunchUrl(uri);
            },
            child: Image.asset(
              'assets/icons/github.png',
              width: 35,
              height: 35,
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              showSuccessAlert(context, "+959766421457");
            },
            child: Image.asset(
              'assets/icons/whatsapp.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    ),
  );
}
