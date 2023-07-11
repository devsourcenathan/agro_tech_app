import 'package:agro_tech_app/constants/icons.dart';
import 'package:agro_tech_app/model/lesson.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  const LessonCard({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        lesson.isPlaying
            ? Image.asset(
                "assets/icons/play.png",
                // icLearning,
                height: 45,
              )
            : Image.asset(
                "assets/icons/play_next.png",
                // icPlayNext,
                height: 45,
              ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lesson.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                lesson.duration,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        lesson.isCompleted
            ? Image.asset(
                "assets/icons/done.png",
                // icDone,
                height: 30,
              )
            : Image.asset(
                "assets/icons/lock.png",
                // icLock,
                height: 30,
              ),
      ],
    );
  }
}
