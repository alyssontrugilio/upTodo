import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../widgets/widgets.dart';

class OnboardingThird extends StatelessWidget {
  const OnboardingThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 14,
            right: 24,
            left: 24,
            bottom: 74,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SecondaryButtonWidget(
                    title: 'SKIP',
                    onPressed: () {},
                    colorFont: const Color(0xFFFFFFFF).withOpacity(0.44),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              SvgPicture.asset(AppImage.taskChecklist),
              const SizedBox(height: 50),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 125, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 26,
                      height: 4,
                      decoration: const BoxDecoration(
                        color: Color(0xffAFAFAF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(56),
                        ),
                      ),
                    ),
                    Container(
                      width: 26,
                      height: 4,
                      decoration: const BoxDecoration(
                        color: Color(0xffAFAFAF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(56),
                        ),
                      ),
                    ),
                    Container(
                      width: 26,
                      height: 4,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Orgonaize your tasks',
                style: GoogleFonts.lato(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 42),
              Text(
                textAlign: TextAlign.center,
                'You can organize your daily tasks by\nadding your tasks into separate categories',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 48,
                    child: SecondaryButtonWidget(
                      title: 'BACK',
                      onPressed: () => context.go(AppRoute.onboardingSecond),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    child: PrimaryButtonWidget(
                      title: 'NEXT',
                      onPressed: () {},
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
