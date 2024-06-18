import 'package:flutter/material.dart';

List<String> textList = ['Themes', 'Rate US', 'More Apps', 'Share'];
List<IconData> iconList = [
  Icons.dark_mode,
  Icons.star_border_outlined,
  Icons.more,
  Icons.share,
];

int selectedIndex = 0;

// List categoryList = [
//   {
//     "quote":
//         "Life isn’t about getting and having, it’s about giving and being.",
//     "author": "Kevin Kruse",
//   },
//   {
//     "quote":
//         "Life isn’t about getting and having, it’s about giving and being.",
//     "author": "Kevin Kruse",
//
//   },
//   {
//     "quote":
//         "Whatever the mind of man can conceive and believe, it can achieve.",
//     "author": "Napoleon Hill",
//   },
//   {
//     "quote": "Strive not to be a success, but rather to be of value.",
//     "author": "Albert Einstein",
//   },
//   {
//     "quote":
//         "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
//     "author": "Robert Frost",
//
//
//   },
//   {
//     "quote": "I attribute my success to this: I never gave or took any excuse.",
//     "author": "Florence Nightingale",
//
//   },
//   {
//     "quote": "You miss 100% of the shots you don’t take.",
//     "author": "Wayne Gretzky",
//   },
//   {
//     "quote": "You miss 100% of the shots you don’t take.",
//     "author": "Wayne Gretzky",
//   },
// ];
List<Map<String, String>> category = [
  {'name': 'love', 'img': 'assets/img/5.jpg'},
  {'name': 'success', 'img': 'assets/img/14.jpg'},
  {'name': 'motivational', 'img': 'assets/img/20.jpg'},
  {'name': 'sad', 'img': 'assets/img/13.jpg'},
  {'name': 'happiness', 'img': 'assets/img/19.jpg'},
  {'name': 'inspirational', 'img': 'assets/img/21.jpg'},
  {'name': 'friendShip', 'img': 'assets/img/22.jpg'},
  {'name': 'Angry', 'img': 'assets/img/22.jpg'},
  {'name': 'alone', 'img': 'assets/img/alone.jpg'},
];
// List categoryList = [
//   love,
//   success,
//   motivational,
//   sad,
//   happiness,
//   inspirational,
//   friendShip,
//   Angry
// ];

List allCategory = [
  //love
  {
    "quote":
        "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.",
    "author": "Lao Tzu",
    'name': 'love'

    // 'img': 'assets/img/5.jpg'
  },
  {
    "quote": "Love is like the wind, you can't see it but you can feel it.",
    "author": "Nicholas Sparks",
    'name': 'love'
    // 'img': 'assets/img/14.jpg'
  },
  {
    "quote": "Love is composed of a single soul inhabiting two bodies.",
    "author": "Aristotle",
    'name': 'love'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "The greatest happiness you can have is knowing that you do not necessarily require happiness.",
    "author": "William Saroyan",
    'name': 'love'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "To love is nothing. To be loved is something. But to love and be loved, that’s everything.",
    "author": "T. Tolis",
    'name': 'love'

    // 'img': 'assets/img/13.jpg'
  },
  //friend
  {
    "quote":
        "Friendship is born at that moment when one person says to another: 'What! You too? I thought I was the only one.'",
    "author": "C.S. Lewis",
    'name': 'friendship'
    // 'img': 'assets/img/22.jpg'
  },
  {
    "quote": "A friend is someone who knows all about you and still loves you.",
    "author": "Elbert Hubbard",
    'name': 'friendship'
    // 'img': 'assets/img/22.jpg'
  },
  {
    "quote":
        "Friendship is the only cement that will ever hold the world together.",
    "author": "Woodrow Wilson",
    'name': 'friendship'
    // 'img': 'assets/img/22.jpg'
  },
  {
    "quote":
        "Walking with a friend in the dark is better than walking alone in the light.",
    "author": "Helen Keller",
    'name': 'friendship'
    // 'img': 'assets/img/22.jpg'
  },
  {
    "quote":
        "A true friend is someone who is there for you when he'd rather be anywhere else.",
    "author": "Len Wein",
    'name': 'friendship'
    // 'img': 'assets/img/22.jpg'
  },
//motivational
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    'name': 'motivational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt",
    'name': 'motivational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "The future belongs to those who believe in the beauty of their dreams.",
    "author": "Eleanor Roosevelt",
    'name': 'motivational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill",
    'name': 'motivational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "Your time is limited, don't waste it living someone else's life.",
    "author": "Steve Jobs",
    'name': 'motivational'
    // 'img': 'assets/img/20.jpg'
  },
//inspirational
  {
    "quote":
        "The only way to achieve the impossible is to believe it is possible.",
    "author": "Charles Kingsleigh",
    'name': 'inspirational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "In the middle of difficulty lies opportunity.",
    "author": "Albert Einstein",
    'name': 'inspirational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "The only limit to our realization of tomorrow will be our doubts of today.",
    "author": "Franklin D. Roosevelt",
    'name': 'inspirational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "author": "Walt Whitman",
    'name': 'inspirational'
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Abraham Lincoln",
    'name': 'inspirational'
    // 'img': 'assets/img/20.jpg'
  },
//Angry
  {
    "quote":
        "The only way to achieve the impossible is to believe it is possible.",
    "author": "Charles Kingsleigh",
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "In the middle of difficulty lies opportunity.",
    "author": "Albert Einstein",
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "The only limit to our realization of tomorrow will be our doubts of today.",
    "author": "Franklin D. Roosevelt",
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote":
        "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "author": "Walt Whitman",
    // 'img': 'assets/img/20.jpg'
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Abraham Lincoln",
    // 'img': 'assets/img/20.jpg'
  },
//happiness
  {
    "quote":
        "Happiness is not something ready made. It comes from your own actions.",
    "author": "Dalai Lama",
    'name': 'happiness'
    // 'img': 'assets/img/19.jpg'
  },
  {
    "quote": "The only joy in the world is to begin.",
    "author": "Cesare Pavese",
    'name': 'happiness'
    // 'img': 'assets/img/19.jpg'
  },
  {
    "quote": "Happiness is a warm puppy.",
    "author": "Charles M. Schulz",
    'name': 'happiness'
    // 'img': 'assets/img/19.jpg'
  },
  {
    "quote":
        "The grand essentials of happiness are: something to do, something to love, and something to hope for.",
    "author": "George Washington Burnap",
    'name': 'happiness'
    // 'img': 'assets/img/19.jpg'
  },
  {
    "quote":
        "Happiness is when what you think, what you say, and what you do are in harmony.",
    "author": "Mahatma Gandhi",
    'name': 'happiness'
    // 'img': 'assets/img/19.jpg'
  },

//sad
  {
    "quote":
        "The word 'happiness' would lose its meaning if it were not balanced by sadness.",
    "author": "Carl Jung",
    'name': 'sad'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "The walls we build around us to keep sadness out also keeps out the joy.",
    "author": "Jim Rohn",
    'name': 'sad'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote": "Sadness flies away on the wings of time.",
    "author": "Jean de La Fontaine",
    'name': 'sad'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "The way sadness works is one of the strange riddles of the world.",
    "author": "Lemony Snicket",
    'name': 'sad'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "Behind every sweet smile, there is a bitter sadness that no one can ever see and feel.",
    "author": "Toba Beta",
    'name': 'sad'
    // 'img': 'assets/img/13.jpg'
  },
//success
  {
    "quote":
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill",
    'name': 'success'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer",
    'name': 'success'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    'name': 'success'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote":
        "Success is walking from failure to failure with no loss of enthusiasm.",
    "author": "Winston Churchill",
    'name': 'success'
    // 'img': 'assets/img/13.jpg'
  },
  {
    "quote": "Success is not in what you have, but who you are.",
    "author": "Bo Bennett",
    'name': 'success'
    // 'img': 'assets/img/13.jpg'
  },

  //alone
  {
    "quote":
        "Loneliness adds beauty to life. It puts a special burn on sunsets and makes night air smell better.",
    "author": "Henry Rollins",
    'name': 'alone'
  },
  {
    "quote":
        "The eternal quest of the human being is to shatter his loneliness.",
    "author": "Norman Cousins",
    'name': 'alone'
  },
  {
    "quote":
        "The best part about being alone is that you really don't have to answer to anybody. You do what you want.",
    "author": "Justin Timberlake",
    'name': 'alone'
  },
  {
    "quote":
        "I used to think the worst thing in life was to end up all alone. It's not. The worst thing in life is to end up with people that make you feel all alone.",
    "author": "Robin Williams",
    'name': 'alone'
  },
  {
    "quote": "It's far better to be unhappy alone than unhappy with someone.",
    "author": "Marilyn Monroe",
    'name': 'alone'
  },
];

List imgTheme = [
  {'img': 'assets/img/23.jpg'},
  {'img': 'assets/img/love.jpg'},
  {'img': 'assets/img/14.jpg'},
  {'img': 'assets/img/20.jpg'},
  {'img': 'assets/img/tree.jpg'},
  {'img': 'assets/img/19.jpg'},
  {'img': 'assets/img/13.jpg'},
  {'img': 'assets/img/22.jpg'},
  {'img': 'assets/img/tr.jpg'},
  {'img': 'assets/img/alone.jpg'},
  {'img': 'assets/img/1.jpg'},
  {'img': 'assets/img/2.jpg'},
  {'img': 'assets/img/3.jpg'},
  {'img': 'assets/img/4.jpg'},
  {'img': 'assets/img/5.jpg'},
  {'img': 'assets/img/7.jpg'},
  {'img': 'assets/img/fl.jpg'},
  {'img': 'assets/img/tr.jpg'},
  {'img': 'assets/img/9.jpg'},
  {'img': 'assets/img/11.jpg'},
  {'img': 'assets/img/12.jpg'},
  {'img': 'asses/img/fl.jpg'},
  {'img': 'assets/img/14.jpg'},
  {'img': 'assets/img/19.jpg'},
  {'img': 'assets/img/20.jpg'},
  {'img': 'asses/img/21.jpg'},
  {'img': 'assets/img/22.jpg'},
  {'img': 'assets/img/tree.jpg'},
  {'img': 'asses/img/25.jpeg'},
  {'img': 'assets/img/33.jpg'},
  {'img': 'assets/img/39.jpg'},
  {'img': 'asses/img/25.jpeg'},
  {'img': 'assets/img/11.jpg'},
  {'img': 'assets/img/7.jpg'},
  {'img': 'assets/img/9.jpg'},
];
List bgImg = [
  {'img': 'assets/img/love.jpg'},
  {'img': 'assets/img/14.jpg'},
  {'img': 'assets/img/20.jpg'},
  {'img': 'assets/img/sad.jpg'},
  {'img': 'assets/img/19.jpg'},
  {'img': 'assets/img/13.jpg'},
  {'img': 'assets/img/22.jpg'},
  {'img': 'assets/img/angry.jpg'},
  {'img': 'assets/img/alone.jpg'},
  // {'img': 'assets/img/2.jpg'},
  // {
  //   'img': 'assets/img/2.jpg',
  // },
  // {
  //   'img': 'assets/img/3.jpg',
  // },
  // {
  //   'img': 'assets/img/4.jpg',
  // },
  // {
  //   'img': 'assets/img/5.jpg',
  // },
  // {
  //   'img': 'assets/img/7.jpg',
  // },
  // {
  //   'img': 'assets/img/8.jpg',
  // },
  // {
  //   'img': 'assets/img/9.jpg',
  // },
  // {
  //   'img': 'assets/img/11.jpg',
  // },
  // {
  //   'img': 'assets/img/12.jpg',
  // },
  // {
  //   'img': 'assets/img/13.jpg',
  // },
  // {
  //   'img': 'assets/img/14.jpg',
  // },
  // {
  //   'img': 'assets/img/19.jpg',
  // },
  // {
  //   'img': 'assets/img/20.jpg',
  // },
  // {
  //   'img': 'assets/img/21.jpg',
  // },
  // {
  //   'img': 'assets/img/22.jpg',
  // },
  // {
  //   'img': 'assets/img/23.jpg',
  // },
  // {
  //   'img': 'assets/img/24.jpg',
  // },
  // {
  //   'img': 'assets/img/25.jpeg',
  // },
  // {
  //   'img': 'assets/img/24.jpg',
  // },
  // {
  //   'img': 'assets/img/1.jpg',
  // }
];
