import 'package:quiz_app/utils/image_constants.dart';

class DummyDb {
  static int? currentQuizIndex;

  static List<Map> flutter_question = [
    {
      'Question': 'What programming language is used to write Flutter apps?',
      'Options': ['Java', 'Swift', 'Dart', 'Kotlin'],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which company developed Flutter?',
      'Options': ['Apple', 'Google', 'Microsoft', 'Amazon'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is the command to create a new Flutter project?',
      'Options': [
        'flutter init',
        'flutter create',
        'flutter new',
        'flutter start'
      ],
      'AnswerIndex': 1
    },
    {
      "Question": "What does the term 'BuildContext' refer to in Flutter?",
      "Options": [
        "A function that builds widgets",
        "A widget's position in the widget tree",
        "A widget's state management",
        "A widget's lifecycle events"
      ],
      "AnswerIndex": 0
    },
    {
      "Question": "Which command is used to run tests in a Flutter project?",
      "Options": [
        "flutter test",
        "flutter run",
        "flutter build",
        "flutter analyze"
      ],
      "AnswerIndex": 0
    },
    {
      "Question":
          "What does the 'pubspec.yaml' file in a Flutter project define?",
      "Options": [
        "Project's build configuration",
        "Project's dependencies and metadata",
        "Project's main entry point",
        "Project's assets and resources"
      ],
      "AnswerIndex": 1
    },
    {
      "Question": "Which widget is used to build forms in Flutter?",
      "Options": ["Form", "TextField", "Container", "Column"],
      "AnswerIndex": 0
    },
    {
      "Question": "What is 'hot reload' in Flutter?",
      "Options": [
        "A feature to restart the application",
        "A feature to reload the Flutter framework",
        "A feature to update the app's UI instantly",
        "A feature to inspect app's memory usage"
      ],
      "AnswerIndex": 2
    },
    {
      "Question": "How can you navigate between screens in Flutter?",
      "Options": [
        "Using intents",
        "Using fragments",
        "Using activities",
        "Using Navigator"
      ],
      "AnswerIndex": 3
    },
    {
      'Question': 'Which widget is used to create a button in Flutter?',
      'Options': ['Text', 'Container', 'Column', 'ElevatedButton'],
      'AnswerIndex': 3
    },
  ];

  static List<Map> History_qstns = [
    {
      'Question': 'Who was the first Prime Minister of India?',
      'Options': [
        'Jawaharlal Nehru',
        'Mahatma Gandhi',
        'Indira Gandhi',
        'Rajendra Prasad'
      ],
      'AnswerIndex': 0
    },
    {
      'Question':
          'In which year did India gain independence from British rule?',
      'Options': ['1945', '1947', '1950', '1952'],
      'AnswerIndex': 1
    },
    {
      'Question':
          'In which year did India gain independence from British rule?',
      'Options': ['1945', '1947', '1950', '1952'],
      'AnswerIndex': 1
    },
    {
      'Question': 'Who was the first Prime Minister of India?',
      'Options': [
        'Jawaharlal Nehru',
        'Mahatma Gandhi',
        'Indira Gandhi',
        'Rajendra Prasad'
      ],
      'AnswerIndex': 0
    },
    {
      'Question': 'Who was the founder of the Maurya Dynasty?',
      'Options': ['Ashoka', 'Chandragupta Maurya', 'Bindusara', 'Samudragupta'],
      'AnswerIndex': 1
    },
    {
      'Question': 'The Battle of Plassey was fought in which year?',
      'Options': ['1757', '1764', '1857', '1905'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Who was the first Mughal Emperor of India?',
      'Options': ['Akbar', 'Babur', 'Humayun', 'Shah Jahan'],
      'AnswerIndex': 1
    },
    {
      'Question':
          'Who was the ruler of the kingdom of Kalinga conquered by Ashoka?',
      'Options': ['Kharavela', 'Porus', 'Alexander', 'Dhananjoy'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Which movement was started by Mahatma Gandhi in 1942?',
      'Options': [
        'Non-Cooperation Movement',
        'Salt Satyagraha',
        'Quit India Movement',
        'Khilafat Movement'
      ],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which empire was founded by Chhatrapati Shivaji?',
      'Options': [
        'Maurya Empire',
        'Mughal Empire',
        'Maratha Empire',
        'Gupta Empire'
      ],
      'AnswerIndex': 2
    },
    {
      'Question': 'The Jallianwala Bagh massacre took place in which year?',
      'Options': ['1917', '1918', '1919', '1920'],
      'AnswerIndex': 2
    }
  ];
  static List<Map> Maths_qstns = [
    {
      'Question': 'What is the value of Pi?',
      'Options': ['3.12', '3.14', '3.16', '3.18'],
      'AnswerIndex': 1
    },
    {
      'Question': 'What is the sum of angles in a triangle?',
      'Options': ['180 degrees', '90 degrees', '360 degrees', '270 degrees'],
      'AnswerIndex': 0
    },
    {
      'Question': 'What is the square root of 64?',
      'Options': ['6', '7', '8', '9'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is 7 multiplied by 8?',
      'Options': ['54', '56', '58', '60'],
      'AnswerIndex': 1
    },
    {
      'Question': 'What is the value of 2^5?',
      'Options': ['10', '20', '25', '32'],
      'AnswerIndex': 3
    },
    {
      'Question': 'What is the formula for the area of a circle?',
      'Options': ['2πr', 'πr^2', 'πd', 'πr^3'],
      'AnswerIndex': 1
    }
  ];
  static List<Map> Chemistry_qstns = [
    {
      'Question': 'What is the chemical symbol for water?',
      'Options': ['H2O', 'O2', 'CO2', 'NaCl'],
      'AnswerIndex': 0
    },
    {
      'Question': 'What is the atomic number of carbon?',
      'Options': ['6', '8', '12', '14'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Which gas is most abundant in the Earth\'s atmosphere?',
      'Options': ['Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon Dioxide'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is the pH value of pure water?',
      'Options': ['7', '0', '14', '5'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Which element is known as the "King of Chemicals"?',
      'Options': ['Oxygen', 'Hydrogen', 'Sulfur', 'Carbon'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is the chemical formula for table salt?',
      'Options': ['KCl', 'NaCl', 'CaCl2', 'MgCl2'],
      'AnswerIndex': 1
    }
  ];
  static List<Map> Biology_qstns = [
    {
      'Question': 'What is the powerhouse of the cell?',
      'Options': ['Nucleus', 'Ribosome', 'Mitochondria', 'Golgi apparatus'],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which part of the plant conducts photosynthesis?',
      'Options': ['Root', 'Stem', 'Leaf', 'Flower'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is the genetic material in cells?',
      'Options': ['RNA', 'Protein', 'DNA', 'Lipid'],
      'AnswerIndex': 2
    },
    {
      'Question':
          'Which organ is responsible for pumping blood in the human body?',
      'Options': ['Brain', 'Lungs', 'Liver', 'Heart'],
      'AnswerIndex': 3
    },
    {
      'Question': 'What type of organism is yeast?',
      'Options': ['Bacteria', 'Fungus', 'Virus', 'Algae'],
      'AnswerIndex': 1
    },
    {
      'Question': 'What is the process by which plants make their food?',
      'Options': [
        'Respiration',
        'Digestion',
        'Photosynthesis',
        'Transpiration'
      ],
      'AnswerIndex': 2
    },
    {
      'Question':
          'Which vitamin is produced when the skin is exposed to sunlight?',
      'Options': ['Vitamin A', 'Vitamin B', 'Vitamin C', 'Vitamin D'],
      'AnswerIndex': 3
    },
    {
      'Question': 'What is the largest organ in the human body?',
      'Options': ['Heart', 'Liver', 'Skin', 'Lungs'],
      'AnswerIndex': 2
    },
    {
      'Question': 'What is the basic unit of life?',
      'Options': ['Organ', 'Tissue', 'Cell', 'Organism'],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which blood cells are responsible for fighting infections?',
      'Options': [
        'Red blood cells',
        'White blood cells',
        'Platelets',
        'Plasma'
      ],
      'AnswerIndex': 1
    },
    {
      'Question':
          'What is the process of cell division in somatic cells called?',
      'Options': ['Meiosis', 'Fertilization', 'Mitosis', 'Replication'],
      'AnswerIndex': 2
    }
  ];
  static List<Map> Sports_qstns = [
    {
      'Question': 'What is the length of a cricket pitch?',
      'Options': ['20 yards', '22 yards', '24 yards', '26 yards'],
      'AnswerIndex': 1
    },
    {
      'Question': 'In which sport is the term "love" used?',
      'Options': ['Cricket', 'Football', 'Tennis', 'Basketball'],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which country has won the most FIFA World Cups?',
      'Options': ['Argentina', 'Germany', 'Italy', 'Brazil'],
      'AnswerIndex': 3
    },
    {
      'Question': 'How many players are there in a basketball team?',
      'Options': ['5', '6', '7', '8'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Which sport is associated with Wimbledon?',
      'Options': ['Cricket', 'Tennis', 'Golf', 'Rugby'],
      'AnswerIndex': 1
    },
    {
      'Question': 'Who has won the most Grand Slam titles in tennis?',
      'Options': [
        'Roger Federer',
        'Rafael Nadal',
        'Novak Djokovic',
        'Pete Sampras'
      ],
      'AnswerIndex': 2
    },
    {
      'Question': 'In which sport is the Ryder Cup contested?',
      'Options': ['Golf', 'Tennis', 'Rugby', 'Cricket'],
      'AnswerIndex': 0
    },
    {
      'Question': 'Which country won the first ever World Cup in 1930?',
      'Options': ['Argentina', 'Brazil', 'Uruguay', 'Italy'],
      'AnswerIndex': 2
    },
    {
      'Question': 'Which game is played with a shuttlecock?',
      'Options': ['Tennis', 'Badminton', 'Squash', 'Table Tennis'],
      'AnswerIndex': 1
    }
  ];

  static List all_questionsList = [
    flutter_question,
    History_qstns,
    Sports_qstns,
    Chemistry_qstns,
    Maths_qstns,
    Biology_qstns
  ];

  static List<Map> homePageData = [
    {
      'png_image': ImageConstants.flutter,
      'topic': 'Flutter',
      'total_qstns': '10 Questions'
    },
    {
      'png_image': ImageConstants.history,
      'topic': 'History',
      'total_qstns': '11 Questions'
    },
    {
      'png_image': ImageConstants.basketBall,
      'topic': 'Sports',
      'total_qstns': '9 Questions'
    },
    {
      'png_image': ImageConstants.chem,
      'topic': 'Chemistry',
      'total_qstns': '6 Questions'
    },
    {
      'png_image': ImageConstants.maths,
      'topic': 'Maths',
      'total_qstns': '6 Questions'
    },
    {
      'png_image': ImageConstants.biology,
      'topic': 'Biology',
      'total_qstns': '11 Questions'
    },
  ];
}
// static List<Map> Maths_qstns = [ {
//        'Question':
//        'Options':
// 'AnswerIndex':
//     },];

