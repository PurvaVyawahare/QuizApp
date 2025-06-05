# 🎯 Flutter Quiz App

![Quiz App Demo](Project%20Screenshots/Quiz_Home_Page.png) 

A beautiful and interactive Quiz App built with Flutter that tests your knowledge with multiple-choice questions and provides detailed results.

## ✨ Features

### Quiz Experience
- **Multiple Question Types**: Answer diverse questions with shuffled options
- **Progress Tracking**: Automatically advances through questions
- **Instant Feedback**: See correct/incorrect answers immediately

### Results & Analytics
- **Score Calculation**: Shows correct/total questions ratio
- **Detailed Summary**: Review all questions with your answers
- **Answer Comparison**: Highlights correct vs your answers

### UI/UX
- **Beautiful Gradients**: Purple/blue themed background
- **Responsive Design**: Works on all screen sizes
- **Material 3 Components**: Modern buttons and layouts
- **Custom Typography**: Google Fonts integration

### Functionality
- **Restart Capability**: Take the quiz again with fresh start
- **State Management**: Tracks answers throughout the quiz
- **Shuffled Answers**: Randomizes option order each time

## 🧠 What I Learned

Building this app helped me understand:

- **Widget Composition**: Creating reusable custom widgets
- **State Management**: Using `setState` for UI updates
- **Screen Navigation**: Switching between start/quiz/result screens
- **Data Handling**: Processing and displaying quiz results
- **UI Styling**: Working with gradients, fonts and Material 3

## 🛠️ Technical Implementation

### Core Components
- `Quiz`: Main app state manager
- `QuestionScreen`: Displays questions and handles answers
- `ResultScreen`: Shows final score and summary
- `AnswerButton`: Custom styled answer button
- `SummaryData`: Detailed answer breakdown

### Data Flow
1. Start screen initiates quiz
2. Questions displayed sequentially
3. Answers collected in list
4. Results calculated and shown
5. Option to restart quiz

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed
- Android Studio/VSCode with Flutter plugin
- Device/emulator for testing

### Installation
```bash
git clone https://github.com/purvavyawahare/quizapp.git
cd quizapp
flutter pub get
flutter run

## 📸 Screenshots

| Start Screen | Question Screen | Results Screen |
|--------------|-----------------|----------------|
| <img src="Project Screenshots/Quiz_Home_Page.png" width="200"> | <img src="Project Screenshots/Quiz_Questions.png" width="200"> | <img src="Project Screenshots/Result_Page.png" width="200"> |


## 📚 Resources

| Resource | Description |
|----------|-------------|
| [Flutter Documentation](https://flutter.dev/docs) | Official Flutter docs |
| [Dart Language Tour](https://dart.dev/guides/language/language-tour) | Learn Dart basics |
| [Material 3 Guidelines](https://m3.material.io/) | Design system reference |

## 👩‍💻 Author

**Purva Vyawahare**  
[![GitHub](https://img.shields.io/badge/GitHub-Profile-181717?style=flat&logo=github)](https://github.com/purvavyawahare)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=flat&logo=linkedin)](https://www.linkedin.com/in/purva-vyawahare-739530332) 