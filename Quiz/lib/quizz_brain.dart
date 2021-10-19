import 'questions.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions(q:'Windows is an operating system.', a: true ),
    Questions(q:'Approximately one quarter of human bones are in the feet.', a: true ),
    Questions(q:'A slug\'s blood is green.', a: true ),
    Questions(q:'Some cats are actually allergic to humans', a:true),
    Questions(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Questions(q:'Approximately one quarter of human bones are in the feet.', a:true),
    Questions(q:'A slug\'s blood is green.', a:true),
    Questions(q:'It is a green color.', a:true),
    Questions(q:'C# is a programming language.', a:true),
    Questions(q:'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questions(q:'English is a programming language.', a:false),
    Questions(q:'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions(q:'The total surface area of two human lungs is approximately 70 square metres.',a:true),
    Questions(q:'Google was originally called \"Backrub\".',a: true),
    Questions( q:'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Questions(q:'The capital city of Turkey is Ankara.',a: true),
  ];

  void nextQuestion() {
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }
  String getQuesionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }


  void reset() {
    _questionNumber = 0;
  }
}