class QuizModel {
  final String questions;
  Map<String, bool> answers;
  String? path;
  QuizModel(
      {this.path = 'logo.png', required this.answers, required this.questions});
}

List<QuizModel> quizData = [
  QuizModel(
    answers: {"Apple": false, "Google": true, "Facebook": false, "else": false},
    questions: "Who created flutter?",
    path: "https://cdn.mos.cms.futurecdn.net/WKs5S36QtRjM5ESezVRZ3d.jpg",
  ),
  QuizModel(
    answers: {
      "Steve Jobs": true,
      "Adam Sandler": false,
      "Mark Zuckerberg": false,
      "Elon Musk": false
    },
    questions: "Who created apple?",
    path:
        "https://cdn.pixabay.com/photo/2016/11/18/15/05/apple-1835211_640.jpg",
  ),
  QuizModel(
    answers: {
      "Steve Jobs": false,
      "Adam Sandler": false,
      "Mark Zuckerberg": false,
      "Elon Musk": true
    },
    questions: "Who created tesla?",
    path:
        "https://cdn.pixabay.com/photo/2022/03/15/09/34/tesla-7069874_640.jpg",
  )
];

List<QuizModel> level2QuizData = [
  QuizModel(
    answers: {
      "ListTile": false,
      "Container": true,
      "Row": false,
      "Column": false
    },
    questions: "Which widget has width attribute",
    path: "https://cdn.mos.cms.futurecdn.net/WKs5S36QtRjM5ESezVRZ3d.jpg",
  ),
  QuizModel(
    answers: {
      "ListTile": false,
      "Container": false,
      "SizedBox": false,
      "Column": true
    },
    questions: "Which widget has childern attribute",
    path: "https://cdn.mos.cms.futurecdn.net/WKs5S36QtRjM5ESezVRZ3d.jpg",
  ),
  QuizModel(
    answers: {
      "ListTile": true,
      "Container": false,
      "SizedBox": false,
      "Column": false
    },
    questions: "Which widget has leading attribute",
    path: "https://cdn.mos.cms.futurecdn.net/WKs5S36QtRjM5ESezVRZ3d.jpg",
  ),
];
List<QuizModel> level3QuizData = [
  QuizModel(
      answers: {
        "Zeroth law": true,
        "First law": false,
        "Second law": false,
        "Third law": false
      },
      questions:
          "Which thermo dynamics law states the equilibrium ability of a system",
      path:
          "https://img.freepik.com/free-photo/abstract-design-with-flowing-lines-hot-cold-colours_1048-8169.jpg?size=626&ext=jpg"),
  QuizModel(
      answers: {
        "Zeroth law": false,
        "First law": true,
        "Second law": false,
        "Third law": false
      },
      questions: "Which thermo dynamics law states the conservation of energy",
      path:
          "https://img.freepik.com/free-photo/abstract-design-with-flowing-lines-hot-cold-colours_1048-8169.jpg?size=626&ext=jpg"),
  QuizModel(
      answers: {
        "ΔU=Q−W": true,
        "ΔU=W−Q": false,
        "ΔU=W+Q": false,
        "-ΔU=Q+W": false
      },
      questions: "Which is the right formula for 1st law of thermo dynamics",
      path:
          "https://img.freepik.com/free-photo/abstract-design-with-flowing-lines-hot-cold-colours_1048-8169.jpg?size=626&ext=jpg"),
];
List<QuizModel> level4QuizData = [
  QuizModel(
      answers: {"Fero": false, "Hrm": true, "Protona": false, "else": false},
      questions: "Who is Fega"),
  QuizModel(
      answers: {"Fero": false, "Hrm": false, "Protona": false, "else": true},
      questions: "Who is Fegga"),
  QuizModel(
      answers: {"Fero": false, "Hrm": false, "Protona": false, "else": true},
      questions: "Who created ")
];

List<QuizModel> level5QuizData = [
  QuizModel(
      answers: {
        "Mercury": false,
        "Mars": false,
        "Earth": true,
        "Saturn": false
      },
      questions: "What's the 3rd planet in solar system?",
      path:
          "https://c02.purpledshub.com/uploads/sites/48/2021/06/solar-system-planets-2dff1b1.jpg?w=1029&webp=1"),
  QuizModel(
      answers: {"Mercury": true, "Mars": false, "Earth": false, "Venus": false},
      questions: "What's the 1st planet in solar system?",
      path:
          "https://c02.purpledshub.com/uploads/sites/48/2021/06/solar-system-planets-2dff1b1.jpg?w=1029&webp=1"),
  QuizModel(
      answers: {
        "Mercury": false,
        "Mars": true,
        "Earth": false,
        "Saturn": false
      },
      questions: "What's the 4th planet in solar system?",
      path:
          "https://c02.purpledshub.com/uploads/sites/48/2021/06/solar-system-planets-2dff1b1.jpg?w=1029&webp=1")
];

List levelsResults = [
  {
    0: 0,
  },
  {
    0: 0,
  },
  {
    1: 0,
  },
  {
    2: 0,
  },
  {
    3: 0,
  },
  {
    4: 0,
  }
];
