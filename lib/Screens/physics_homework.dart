import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class PhysicsHomework extends StatefulWidget {
  @override
  State<PhysicsHomework> createState() => PhysicsHomeworkState();
}

class PhysicsHomeworkState extends State<PhysicsHomework> {
  late ScrollController _scrollController;
  late Map<int, List<String>>
  selectedOptionsMap; // Map to store selected options for each question
  late Map<int, bool>
  submittedMap; // New map to track submission status for each question
  bool _showButton = false;

  final List<Map<String, dynamic>> homeworkData = [
    {
      'title': 'السؤال الأول',
      'img': 'assets/images/homework.png',
      'options': ['خيار1', 'خيار2', 'خيار3', 'خيار4'],
      'selectedOption': null, // For radio button question
      'correctAnswer': 'خيار2', // Add correct answer for the first question
    },

    {
      'title': 'السؤال الثانى',
      'img':
      'ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين',
      'options': ['خيار1', 'خيار2', 'خيار3', 'خيار4'],
      'selectedOptions': [], // For checkbox question
      'correctAnswer': 'خيار3', // Add correct answer for the first question
    },
    {
      'title': 'السؤال الثالث',
      'img':
      'ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين',
      'options': ['خيار1', 'خيار2', 'خيار3', 'خيار4'],
      'selectedOptions': [], // For checkbox question
      'correctAnswer': 'خيار1', // Add correct answer for the first question
    },
    {
      'title': 'السؤال الرابع',
      'img':
      'ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين ....ندرس بها الاسس الحديثة فى ماده الفيزياء و القوانين',
      'options': ['خيار1', 'خيار2', 'خيار3', 'خيار4'],
      'selectedOptions': [], // For checkbox question
      'correctAnswer': 'خيار4', // Add correct answer for the first question
    },
    {
      'title': 'السؤال الخامس',
      'img': 'assets/images/homework.png',
      'options': ['خيار1', 'خيار2', 'خيار3', 'خيار4'],
      'selectedOption': null, // For radio button question
      'correctAnswer': 'خيار1', // Add correct answer for the first question
    },
    // Add other questions with selectedOptions field
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    selectedOptionsMap = Map.fromIterable(
      homeworkData,
      key: (item) => homeworkData.indexOf(item),
      value: (item) =>
      List<String>.empty(
          growable: true), // Initialize empty list for each question
    );
    submittedMap = Map.fromIterable(
      homeworkData,
      key: (item) => homeworkData.indexOf(item),
      value: (item) => false, // Initialize all submissions to false
    );
  }

  void checkAnswers() {
    for (int i = 0; i < homeworkData.length; i++) {
      final Map<String, dynamic> homework = homeworkData[i];
      final List<String> selectedOptions = selectedOptionsMap[i]!;
      final String correctAnswer = homework['correctAnswer'];

      bool isCorrect = selectedOptions.contains(correctAnswer);
      // Update UI to show correct/incorrect answers
      selectedOptionsMap[i] = selectedOptions.map((option) {
        if (option == correctAnswer) {
          return isCorrect ? '$option (صحيح)' : '$option (خطأ)';
        } else {
          return option;
        }
      }).toList();
    }
    setState(() {}); // Update UI
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      setState(() {
        _showButton = true;
      });
    } else {
      setState(() {
        _showButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Navigate back to the previous page
          },
          child: Image.asset(
            'assets/images/chevron-right.png',
            width: 24,
            height: 24,
          ),
        ),
        title: Text(
          "واجب الفيزياء الحديثة",
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Cairo',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: homeworkData.length,
              itemBuilder: (BuildContext context, int index) {
                final Map<String, dynamic> homework = homeworkData[index];
                final List<String> options = List<String>.from(
                    homework['options']);
                final String? selectedOption = homework['selectedOption'];
                final List<String> selectedOptions = selectedOptionsMap[index]!;
                final String correctAnswer = homework['correctAnswer'];
                bool hasSelectedOption = selectedOptions.isNotEmpty;
                bool submitted = submittedMap[index]!;

                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        homework['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF003566),
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 14),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: homework['img']!.endsWith('.png')
                            ? Image.asset(
                          homework['img']!,
                          fit: BoxFit.cover,
                        )
                            : Text(
                          homework['img']!,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: options.map((option) {
                          bool isCorrect = option == correctAnswer;
                          bool isSelected = selectedOptions.contains(option);

                          if (submitted) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                Text(
                                selectedOptions.contains(option)
                                ? (isCorrect
                                ? '$option (صحيح)'
                                : '$option (خطأ)')
                                : option == correctAnswer
                                ? '$option (صحيح)'
                                : option,
                          style: TextStyle(
                          fontFamily: 'Cairo',
                          color: option == correctAnswer
                          ? Colors.green // Correct answer
                              : isSelected
                          ? Colors.red // Incorrectly selected by the user
                              : Colors.black, // Other options
                          fontSize: 15.13,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(width: 10),
                          if (index == 1)
                          Checkbox(
                          value: isSelected,
                          onChanged: null,
                          activeColor: Colors.green,
                          )
                          else
                          Radio<String>(
                          value: option,
                          groupValue: selectedOption,
                          onChanged: null,
                          activeColor: Colors.green,
                          ),
                          ],
                          );
                          }
                          else {
                          return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Text(
                          option,
                          style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontSize: 15.13,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          if (index == 1)
                          Checkbox(
                          value: isSelected,
                          onChanged: (isChecked) {
                          setState(() {
                          if (isChecked!) {
                          selectedOptions.add(option);
                          } else {
                          selectedOptions.remove(option);
                          }
                          });
                          },
                          activeColor: Colors.green,
                          )
                          else
                          Radio<String>(
                          value: option,
                          groupValue: selectedOption,
                          onChanged: (value) {
                          setState(() {
                          homework['selectedOption'] = value;
                          });
                          },
                          activeColor: Colors.green,
                          ),
                          ],
                          );
                          }
                        }).toList(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          if (_showButton)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Color(0xFF008DC9),
                    ),
                    onPressed: () async {
                      checkAnswers();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'تم الارسال',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                      setState(() {
                        submittedMap = Map.fromIterable(
                          homeworkData,
                          key: (item) => homeworkData.indexOf(item),
                          value: (item) => true,
                        );
                      });
                    },
                    child: Text(
                      'تقديم الاجابة',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

}
