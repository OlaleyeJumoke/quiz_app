import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view_model/quiz_viewmodel.dart';

class ResultsCard extends StatelessWidget {
  const ResultsCard({
    super.key,
    required this.roundedPercentageScore,
    required this.bgColor3,
  });

  final int roundedPercentageScore;
  final Color bgColor3;

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<QuizViewModel>();
     //Color bgColor = ColorScheme.fromSeed(seedColor: Colors.green).primaryContainer;
     Color bgColor = ColorScheme.fromSeed(seedColor: Colors.green).primary;
;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.888,
      height: MediaQuery.of(context).size.height * 0.568,
      child: Stack(
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                           
                              TextSpan(
                                text: "Congratulations!,",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 14 ),
                              ),
                         
                            TextSpan(
                              text: "  ${viewModel.userName}\n You Scored  \n",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: "$roundedPercentageScore%",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 30,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const Divider(),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: roundedPercentageScore >= 75
                            ? Column(
                                children: [
                                  Text(
                                    "You have Earned this Trophy",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  Image.asset("assets/bouncy-cup.gif",
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25),
                                ],
                              )
                            : Column(
                                children: [
                                  Text(
                                    "I know You can do better!!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Image.asset("assets/sad.png",
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25),
                                ],
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: -10,
            top: MediaQuery.of(context).size.height * 0.178,
            child: Container(
              height: 25,
              width: 25,
              decoration:
                   BoxDecoration(color: bgColor, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            right: -10,
            top: MediaQuery.of(context).size.height * 0.178,
            child: Container(
              height: 25,
              width: 25,
              decoration:
                   BoxDecoration(color: bgColor, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
