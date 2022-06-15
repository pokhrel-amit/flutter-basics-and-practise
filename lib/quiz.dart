class Quiz {
  int _totalAttempted = 0;
  int _currentScore = 0;
 
 int get currentScore=>_currentScore;
 int get totalAttempted=>_totalAttempted;

  void markAnswerCorrect() {
    _currentScore++;
    _totalAttempted++;
  }

  void markAnswerWrong() {
    _totalAttempted++;
  }

  void resetQuiz() {
    _totalAttempted = 0;
    _currentScore = 0;
  }
}
