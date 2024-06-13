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
    'img': 'assets/img/14.jpg'
  },
  {
    "quote":
        "Life isn’t about getting and having, it’s about giving and being.",
    "author": "Kevin Kruse",
    'category': 'motivational',
    'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "Whatever the mind of man can conceive and believe, it can achieve.",
    "author": "Napoleon Hill",
    'category': 'Sad quotes',
    'img': 'assets/img/13.jpg'
  },
  {
    "quote": "Strive not to be a success, but rather to be of value.",
    "author": "Albert Einstein",
    'category': 'Love quotes',
    'img': 'assets/img/5.jpg'
  },
  {
    "quote":
        "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
    "author": "Robert Frost",
    'category': 'Inspirational',
    'img': 'assets/img/21.jpg'
  },
  {
    "quote": "I attribute my success to this: I never gave or took any excuse.",
    "author": "Florence Nightingale",
    'category': 'Sports quotes',
    'img': 'assets/img/23.jpg'
  },
  {
    "quote": "You miss 100% of the shots you don’t take.",
    "author": "Wayne Gretzky",
    'category': 'friendShip quotes',
    'img': 'assets/img/22.jpg'
  },
  {
    "quote": "You miss 100% of the shots you don’t take.",
    "author": "Wayne Gretzky",
    'category': 'happiness',
    'img': 'assets/img/19.jpg'
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
List friendShip = [
  {
    "quote":
        "Friendship is born at that moment when one person says to another: 'What! You too? I thought I was the only one.'",
    "author": "C.S. Lewis"
  },
  {
    "quote": "A friend is someone who knows all about you and still loves you.",
    "author": "Elbert Hubbard"
  },
  {
    "quote":
        "Friendship is the only cement that will ever hold the world together.",
    "author": "Woodrow Wilson"
  },
  {
    "quote":
        "Walking with a friend in the dark is better than walking alone in the light.",
    "author": "Helen Keller"
  },
  {
    "quote":
        "A true friend is someone who is there for you when he'd rather be anywhere else.",
    "author": "Len Wein"
  },
];
List motivational = [
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs"
  },
  {
    "quote": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt"
  },
  {
    "quote":
        "The future belongs to those who believe in the beauty of their dreams.",
    "author": "Eleanor Roosevelt"
  },
  {
    "quote":
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill"
  },
  {
    "quote": "Your time is limited, don't waste it living someone else's life.",
    "author": "Steve Jobs"
  },
];
List inspirational = [
  {
    "quote":
        "The only way to achieve the impossible is to believe it is possible.",
    "author": "Charles Kingsleigh"
  },
  {
    "quote": "In the middle of difficulty lies opportunity.",
    "author": "Albert Einstein"
  },
  {
    "quote":
        "The only limit to our realization of tomorrow will be our doubts of today.",
    "author": "Franklin D. Roosevelt"
  },
  {
    "quote":
        "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "author": "Walt Whitman"
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Abraham Lincoln"
  },
];
List happiness = [
  {
    "quote":
        "Happiness is not something ready made. It comes from your own actions.",
    "author": "Dalai Lama"
  },
  {
    "quote": "The only joy in the world is to begin.",
    "author": "Cesare Pavese"
  },
  {"quote": "Happiness is a warm puppy.", "author": "Charles M. Schulz"},
  {
    "quote":
        "The grand essentials of happiness are: something to do, something to love, and something to hope for.",
    "author": "George Washington Burnap"
  },
  {
    "quote":
        "Happiness is when what you think, what you say, and what you do are in harmony.",
    "author": "Mahatma Gandhi"
  },
];
List sad = [
  {
    "quote":
        "The word 'happiness' would lose its meaning if it were not balanced by sadness.",
    "author": "Carl Jung"
  },
  {
    "quote":
        "The walls we build around us to keep sadness out also keeps out the joy.",
    "author": "Jim Rohn"
  },
  {
    "quote": "Sadness flies away on the wings of time.",
    "author": "Jean de La Fontaine"
  },
  {
    "quote":
        "The way sadness works is one of the strange riddles of the world.",
    "author": "Lemony Snicket"
  },
  {
    "quote":
        "Behind every sweet smile, there is a bitter sadness that no one can ever see and feel.",
    "author": "Toba Beta"
  },
];
List success = [
  {
    "quote":
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill"
  },
  {
    "quote":
        "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer"
  },
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs"
  },
  {
    "quote":
        "Success is walking from failure to failure with no loss of enthusiasm.",
    "author": "Winston Churchill"
  },
  {
    "quote": "Success is not in what you have, but who you are.",
    "author": "Bo Bennett"
  },
];
List imgTheme = [
  {
    'img': 'assets/img/1.jpg',
  },
  {
    'img': 'assets/img/2.jpg',
  },
  {
    'img': 'assets/img/3.jpg',
  },
  {
    'img': 'assets/img/4.jpg',
  },
  {
    'img': 'assets/img/5.jpg',
  },
  {
    'img': 'assets/img/7.jpg',
  },
  {
    'img': 'assets/img/8.jpg',
  },
  {
    'img': 'assets/img/9.jpg',
  },
  {
    'img': 'assets/img/11.jpg',
  },
  {
    'img': 'assets/img/12.jpg',
  },
  {
    'img': 'asses/img/13.jpg',
  },
  {
    'img': 'assets/img/14.jpg',
  },
  {
    'img': 'assets/img/19.jpg',
  },
  {
    'img': 'assets/img/20.jpg',
  },
  {
    'img': 'asses/img/21.jpg',
  },
  {
    'img': 'assets/img/22.jpg',
  },
  {
    'img': 'assets/img/23.jpg',
  },
  {
    'img': 'assets/img/24.jpg',
  },
  {
    'img': 'asses/img/25.jpeg',
  },
  {
    'img': 'assets/img/33.jpg',
  },
  {
    'img': 'assets/img/39.jpg',
  },
  {
    'img': 'assets/img/9.jpg',
  },
  {
    'img': 'asses/img/25.jpeg',
  },
  {
    'img': 'assets/img/11.jpg',
  },
  {
    'img': 'assets/img/7.jpg',
  },
  {
    'img': 'assets/img/9.jpg',
  },
  {
    'img': 'asses/img/24.jpg',
  },
];
