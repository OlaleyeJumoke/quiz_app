class Questions {
  final int id;
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedWidgetOption;
  Option? correctAnswer;

  Questions({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  Questions copyWith() {
    return Questions(
      id: id,
      text: text,
      options: options
          .map((option) =>
              Option(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWidgetOption: selectedWidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  Questions(
    text:
        "I am a simple method to manage state within a StatefulWidget. What am I?",
    options: [
      const Option(text: "MobX", isCorrect: false),
      const Option(text: "Bloc", isCorrect: false),
      const Option(text: "setState", isCorrect: true),
      const Option(text: "Riverpod", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const Option(text: "setState", isCorrect: true),
  ),
  Questions(
    text:
        "I am a Flutter package that enables reactive programming and observable state objects. ",
    options: [
      const Option(text: "Riverpod", isCorrect: false),
      const Option(text: "Mobx", isCorrect: true),
      const Option(text: "Provider", isCorrect: false),
      const Option(text: "setState", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const Option(text: "Mobx", isCorrect: true),
  ),
  Questions(
    text:
        "What is the name of the Flutter state management approach that uses a widget tree to hold the app state and update the UI, and is similar to Provider?",
    options: [
      const Option(text: "Riverpod", isCorrect: true),
      const Option(text: "Bloc", isCorrect: false),
      const Option(text: "Redux", isCorrect: false),
      const Option(text: "Mobx", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const Option(text: "Riverpod", isCorrect: true),
  ),

  Questions(
    text:
        "I am a lightweight and powerful solution for Flutter, combining state management and dependency injection. What am I?",
    options: [
      const Option(text: "Getx", isCorrect: true),
      const Option(text: "Riverpod", isCorrect: false),
      const Option(text: "Redux", isCorrect: false),
      const Option(text: "Get_it", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const Option(text: "Getx", isCorrect: true),
  ),
  // other 4
  Questions(
    text:
        "I am a feature of ****** that allows developers to navigate between routes without using context. What am I?",
    options: [
      const Option(text: "Mobx", isCorrect: false),
      const Option(text: "InheritedWidgets", isCorrect: false),
      const Option(text: "Provider", isCorrect: false),
      const Option(text: "Getx", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const Option(text: "Getx", isCorrect: true),
  ),
  Questions(
    text: "I use streams and sinks for state management, who am I?",
    options: [
      const Option(text: "Bloc", isCorrect: true),
      const Option(text: "GetX", isCorrect: false),
      const Option(text: "Provider", isCorrect: false),
      const Option(text: "InheritedWidgets", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const Option(text: "Bloc", isCorrect: true),
  ),

  Questions(
    text: "I allow using React-like hooks in Flutter, who am I?",
    options: [
      const Option(text: "GetX", isCorrect: false),
      const Option(text: "Redux", isCorrect: false),
      const Option(text: "Mobx", isCorrect: false),
      const Option(text: "Hooks", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const Option(text: "Hooks", isCorrect: true),
  ),
  Questions(
    text:
        "I am a Flutter package that helps manage state by providing a way to handle scoped state. What am I?",
    options: [
      const Option(text: "Scoped Model", isCorrect: true),
      const Option(text: "Flutter Hooks", isCorrect: false),
      const Option(text: "Provider", isCorrect: false),
      const Option(text: "GetX", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const Option(text: "Scoped Model", isCorrect: true),
  ),

  Questions(
    text:
        " I am the method in a StatefulWidget that is called when the widget is being removed from the widget tree. What am I?",
    options: [
      const Option(text: "initState()", isCorrect: false),
      const Option(text: "onDestroy()", isCorrect: false),
      const Option(text: "dispose()", isCorrect: true),
      const Option(text: "setState()", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const Option(text: "dispose()", isCorrect: true),
  ),

  Questions(
    text:
        "I am the first thing that happens when a Flutter app is launched. I am called by the Dart VM. What am I?",
    options: [
      const Option(text: "main()", isCorrect: true),
      const Option(text: "onDestroy()", isCorrect: false),
      const Option(text: "dispose()", isCorrect: false),
      const Option(text: "onCreate()", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const Option(text: "main()", isCorrect: true),
  ),

  Questions(
    text:
        "I am called after the main() function. I am responsible for creating the Flutter app's root widget. What am I?",
    options: [
      const Option(text: "main()", isCorrect: false),
      const Option(text: "runApp()", isCorrect: true),
      const Option(text: "dispose()", isCorrect: false),
      const Option(text: "onCreate()", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const Option(text: "runApp()", isCorrect: true),
  ),

  Questions(
    text:
        "I am a method that notifies the framework that the internal state of a StatefulWidget has changed. This triggers a rebuild. What am I?",
    options: [
      const Option(text: "Provider", isCorrect: false),
      const Option(text: "runApp()", isCorrect: false),
      const Option(text: "setState()", isCorrect: true),
      const Option(text: "onCreate()", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const Option(text: "setState()", isCorrect: true),
  ),
];
