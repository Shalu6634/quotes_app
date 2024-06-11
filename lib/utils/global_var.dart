import 'package:flutter/material.dart';

List<String> textList = ['Themes', 'Rate US', 'More Apps', 'Share'];
List<IconData> iconList = [
  Icons.dark_mode,
  Icons.star_border_outlined,
  Icons.more,
  Icons.share,
];

int selectedIndex = 0;

List categoryList = [
  {
    "quote":
        "Life isn’t about getting and having, it’s about giving and being.",
    "author": "Kevin Kruse",
    'category': 'Success quotes',
    'img': 'assets/img/9.jpg'
  },
  {
    "quote":
        "Life isn’t about getting and having, it’s about giving and being.",
    "author": "Kevin Kruse",
    'category': 'motivational',
    'img': 'assets/img/4.jpg'
  },
  {
    "quote":
        "Whatever the mind of man can conceive and believe, it can achieve.",
    "author": "Napoleon Hill",
    'category': 'Sad quotes',
    'img': 'assets/img/11.jpg'
  },
  {
    "quote": "Strive not to be a success, but rather to be of value.",
    "author": "Albert Einstein",
    'category': 'Love quotes',
    'img': 'assets/img/2.jpg'
  },
  {
    "quote":
        "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
    "author": "Robert Frost",
    'category': 'Inspirational',
    'img': 'assets/img/13.jpg'
  },
  {
    "quote": "I attribute my success to this: I never gave or took any excuse.",
    "author": "Florence Nightingale",
    'category': 'Sports quotes',
    'img': 'assets/img/3.jpg'
  },
  {
    "quote": "You miss 100% of the shots you don’t take.",
    "author": "Wayne Gretzky",
    'category': 'flowers quotes',
    'img': 'assets/img/7.jpg'
  },
];

List love = [
  {
    "quote":
        "The best love is the kind that awakens the soul; that makes us reach for more, "
            "that plants the fire in our hearts and brings peace to our minds. That’s what I hope to give you forever.",
    "author": "Nicholas Sparks"
  },
  {
    "quote":
        "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.",
    "author": "Lao Tzu"
  },
  {
    "quote": "Love is like the wind, you can't see it but you can feel it.",
    "author": "Nicholas Sparks"
  },
  {
    "quote": "Love is composed of a single soul inhabiting two bodies.",
    "author": "Aristotle"
  },
  {
    "quote":
        "The greatest happiness you can have is knowing that you do not necessarily require happiness.",
    "author": "William Saroyan"
  },
  {
    "quote":
        "Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.",
    "author": "Maya Angelou"
  },
  {
    "quote":
        "To love is nothing. To be loved is something. But to love and be loved, that’s everything.",
    "author": "T. Tolis"
  },
  {
    "quote":
        "I have waited for this opportunity for more than half a century, to repeat to you once again my vow of eternal fidelity and everlasting love.",
    "author": "Gabriel Garcia Marquez"
  },
  {
    "quote": "We loved with a love that was more than love.",
    "author": "Edgar Allan Poe"
  },
  {
    "quote":
        "You don’t love someone for their looks, or their clothes, or for their fancy car, but because they sing a song only you can hear.",
    "author": "Oscar Wilde"
  }
];
