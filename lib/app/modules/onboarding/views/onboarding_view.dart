import 'package:flutter/material.dart';

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
                          'https://i.pinimg.com/564x/3c/70/7d/3c707df82142f314d40afa2a4868ef48.jpg',
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
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.nextPage();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
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
        const Spacer(),
        Image.network(image),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
