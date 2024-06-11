import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravellingApp {
  //icon images
  Image iconHome = const Image(
      image: AssetImage('assets/bottom_navigation_icons/icon_home.png'));
  Image iconFavorite = const Image(
      image: AssetImage('assets/bottom_navigation_icons/icon_favorite.png'));
  Image iconLocation = const Image(
      image: AssetImage('assets/bottom_navigation_icons/icon_location.png'));
  Image iconRead = const Image(
      image: AssetImage('assets/bottom_navigation_icons/icon_read.png'));

  String dubaiImage = 'assets/destinations/dubai.jpg';
  String phuketImage = 'assets/destinations/phuket.jpg';
  String tokyoImage = 'assets/destinations/tokyo.jpg';

  //places images

  Text contentTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600),
    );
    return holding;
  }

  //fontStyling of the contents
  Text destinationTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(
          fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    );
    return holding;
  }

  Text destinationDescription(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white),
    );
    return holding;
  }

  Text contentDescription(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 9),
    );
    return holding;
  }

  Text contentSubTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 11, fontWeight: FontWeight.w500),
    );
    return holding;
  }

  Text readingPageTopicFont(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
    );
    return holding;
  }

  Text readingPageDescriptionFont(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 14),
    );
    return holding;
  }

  //home page travel news
  String topic1 = "Coronavirus (COVID-19) travel restrictions";
  String description1 =
      "Foreign nationals categorized below are denied permission to enter Japan for the time being, unless there are exceptional circumstances. Foreign nationals who have stayed in any of the areas listed in the following table within 14 days prior to the application for landing.";

  String topic2 = 'Coronavirus Outbreak';
  String description2 =
      "The outbreak of the coronavirus is having a big impact on tourism in Japan. The country's borders remain closed to international tourists, and there are no signs that the borders will be opened to considerable numbers of tourists in the near future.";

  //destination page contents
  String destination1Topic = 'UAE \nDubai,Oil Money';
  String destination1Info =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  String destination2Topic = 'Thailand \nPhuket,Mystic Heaven';
  String destination2Info =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";

  String destination3Topic = 'JAPAN \nTokyo,Historic Tokyo';
  String destination3Info =
      "The site of Tokyo has been inhabited since ancient times; the small fishing village of Edo existed there for centuries. Edo’s development into a city did not occur until the Tokugawa period (1603–1867), when it became the capital of the Tokugawa shogunate. During this period, however, the imperial family remained in Kyōto, the ancient imperial capital. With the Meiji Restoration of 1868, which ended the shogunate, the capital was moved to Edo. The city was renamed Tokyo, meaning “eastern capital.” Edo had been Japan’s largest city since the 17th century.";

  String readingPageTitle =
      "Japan Travel News Travel Alerts and Disaster Updates Latest news on events affecting travel in Japan";

  String readingPageDescription = """Coronavirus Outbreak
The outbreak of the coronavirus is having a big impact on tourism in Japan. The country's borders remain closed to international tourists, and there are no signs that the borders will be opened to considerable numbers of tourists in the near future.

Current state of tourism: borders closed

Domestic Situation
Although the virus has not spread in Japan at a rate seen in Europe and North America, the rise of infections and resulting impact on the healthcare system have led to the declaration of a third state of emergency in parts of the country in April 2021. The state of emergency is currently observed in six of Japan's 47 prefectures, including Tokyo, until August 31.

During the state of emergency, drinking establishments are requested to remain closed. Furthermore, large shopping facilities and tourist attractions are requested to close early in the evenings.""";
}
