import 'package:flutter/material.dart';

List<String> questions=[
  "(১) বঙ্গবন্ধু ম্যাট্রিক পাশ করেন কোন স্কুল থেকে, কত সালে?",
  "(২) বঙ্গবন্ধু কলকাতা ইসলামিয়া কলেজের বেকার হোষ্টেলের কত নম্বর কক্ষে থাকতেন?",
  "(৩) বঙ্গবন্ধু কত সালে হোসেন শহীদ সোহরাওয়ার্দীর সহকারী নিযুক্ত হন?",
  "(৪) বঙ্গবন্ধু বিএ পাশ করেন কত সালে, কোন কলেজ থেকে?",
  "(৫) বঙ্গবন্ধু ঢাকা বিশ্ববিদ্যালয়ে কোন বিভাগের ছাত্র ছিলেন?"
];

List<String> answers=[
  "উত্তর: গোপালগঞ্জ মিশনারি স্কুলে, ১৯৪২ সালে।",
  "উত্তর: ২৪ নম্বর কক্ষে।",
  "উত্তর: ১৯৪৬ সালে।",
  "উত্তর: ১৯৪৭ সালে কলকাতা ইসলামিয়া কলেজ থেকে।",
  "উত্তর: আইন বিভাগের।"

];
List<bool> ansVisibility=[
  false,
  false,
  false,
  false,
  false
];
class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.
                              of(context).size.width/1.2,
                              child: Text(questions[index],
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 20
                              ),),
                            ),

                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(ansVisibility[index]== true){
                                    ansVisibility[index]=false;
                                  } else{
                                    ansVisibility[index]=true;
                                  }
                                });
                              },
                              child: Icon(
                                  Icons.arrow_downward_outlined,
                              size: 25,),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: ansVisibility[index],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(answers[index],
                                style: TextStyle(
                                    fontSize: 17,
                                  color: Colors.green
                                )),
                          ),
                        )
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      ),

    );
  }
}
