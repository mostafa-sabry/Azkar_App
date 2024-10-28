import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int counter = 0;
int counterTime = 0;
int result = 0;
int goalValue = 33;

class _HomeScreenState extends State<HomeScreen> {
  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
    'لا حول ولا قوة إلا بالله',
    'أستغفر الله العظيم',
    'اللهم صلِّ على محمد وعلى آل محمد',
    'اللهم بارك لنا في موتنا',
    'اللهم ارحمنا واغفر لنا',
    'اللهم عافنا واعف عنا',
    'اللهم ارزقنا الصبر',
    'اللهم اجعلنا من أهل الجنة',
    'اللهم ألهمنا الصواب',
    'اللهم اجعلنا من الذاكرين',
    'اللهم حبب إلينا الإيمان',
    'اللهم اجعلنا من التوابين',
    'اللهم اجعلنا من الصالحين',
    'اللهم ثبتنا على الإيمان',
    'اللهم اجعلنا من الذين يتلوون القرآن',
    'اللهم اجعلنا من الذين يصلون على النبي',
    'اللهم اجعلنا من المحسنين',
    'اللهم اجعلنا من المتقين',
    'اللهم اجعلنا من الصابرين',
    'اللهم اجعلنا من الشاكرين',
    'اللهم اهدنا إلى صراطك المستقيم',
    'اللهم اجعلنا من أهل الدعاء',
    'اللهم اجعلنا من الصالحين',
    'اللهم اجعلنا من الراجين',
    'اللهم اجعلنا من القانتين',
    'اللهم اجعلنا من الذاكرين لك',
    'اللهم اجعلنا من المؤمنين',
    'اللهم اجعلنا من المحبوبين عندك',
  ];
  int currentAzkarIndex = 0;

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xFFB1001C);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.color_lens,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'الهدف',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (goalValue > 0) {
                            goalValue--;
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      goalValue.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          goalValue++;
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          goalValue = 33;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Text(
                          '33',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          goalValue = 100;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Text(
                          '100',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          goalValue += 100;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Text(
                          '+100',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          goalValue += 1000;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: const Text(
                          '+1000',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                azkar[currentAzkarIndex],
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: "Amiri",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (counter == goalValue) {
                      counterTime++;
                      counter = 0;
                      result += goalValue;
                      if (currentAzkarIndex < azkar.length - 1) {
                        currentAzkarIndex++;
                      } else {
                        currentAzkarIndex = 0; 
                      }
                    } else {
                      counter++;
                    }
                  });
                },
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  percent: counter / goalValue,
                  center: const Icon(
                    Icons.touch_app,
                    size: 50.0,
                  ),
                  backgroundColor: mainColor.withOpacity(0.2),
                  progressColor: mainColor,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'مرات التكرار : $counterTime',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'مجموع : $result',
                style: const TextStyle(fontSize: 25),
              ),
            ],
          )
        ],
      ),
    );
  }
}
