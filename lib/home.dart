import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:weather_app/widgets/txt.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = true;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Center(
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "TEMPRATURE IN CELCIUS",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.11),
              CircularPercentIndicator(
                radius: 110.0,
                lineWidth: 30.0,
                animation: true,
                percent: 0.6,
                center: const Text(
                  "35 *C",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Color.fromARGB(255, 158, 157, 157)),
                ),
                //  progressColor:,
                linearGradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 217, 208, 111),
                    Color.fromARGB(255, 255, 158, 12)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [
                    0.1,
                    0.9,
                  ],
                ),

                // Colors.orange,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Color.fromARGB(255, 232, 231, 231),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.orange,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ), //Che
                  // InkWell(
                  //   onTap: (() {}),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width * 0.053,
                  //     height: MediaQuery.of(context).size.height * 0.025,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         border: Border.all(
                  //           width: 1.7,
                  //           color: Colors.black,
                  //         ),
                  //         // Make rounded corners
                  //         borderRadius: BorderRadius.circular(3)),
                  //   ),
                  // ),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                  const Text(
                    "CURRENT TEMP",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 158, 157, 157)),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.orange,
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = value!;
                        });
                      }),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.053,
                  //   height: MediaQuery.of(context).size.height * 0.025,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       border: Border.all(
                  //         width: 1.7,
                  //         color: Colors.black,
                  //       ),
                  //       // Make rounded corners
                  //       borderRadius: BorderRadius.circular(3)),
                  // ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.005),

                  // SizedBox(width: MediaQuery.of(context).size.width * 0.001),
                  const Text(
                    "MAXIMUM TEMP",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 158, 157, 157)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text3(
                    data: 'THURSDAY',
                  ),
                  Text3(
                    data: '06.04.2023',
                  ),
                  Text3(
                    data: '40C/29C',
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text3(
                    data: 'FRIDAY',
                  ),
                  Text3(
                    data: '07.04.2023',
                  ),
                  Text3(
                    data: '40C/29C',
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text3(
                    data: 'SATURDAY',
                  ),
                  Text3(
                    data: '08.04.2023',
                  ),
                  Text3(
                    data: '40C/29C',
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text3(
                    data: 'SUNDAY',
                  ),
                  Text3(
                    data: '09.04.2023',
                  ),
                  Text3(
                    data: '40C/29C',
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text3(
                    data: 'MONDAY',
                  ),
                  Text3(
                    data: '10.04.2023',
                  ),
                  Text3(
                    data: '40C/29C',
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
            ],
          ),
        ),
      ),
    ));
  }
}
