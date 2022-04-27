import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => PageView.builder(
                    itemCount: 3,
                    onPageChanged: (index) {
                      controller.pageIndex.value = index;
                    },
                    controller: controller.pageController.value,
                    itemBuilder: (context, index) => OnboardingItem(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTALoKu912x28CKXOlgVhCXNJBOV5KQuvnqjA&usqp=CAU',
                      title:
                          'Page ${index + 1}: Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      description:
                          'Page ${index + 1}: Contrary to popular belief, Lorem Ipsum is not simply random text. ',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    3,
                    ((index) => Obx(
                          () => Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: DotIndicator(
                              isActive: index == controller.pageIndex.value,
                            ),
                          ),
                        )),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.nextPage();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                      ),
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.network(image),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        Spacer(),
      ],
    );
  }
}
