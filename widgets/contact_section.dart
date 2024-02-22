import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';
import 'package:portfolio_web/constants/size.dart';
import 'package:portfolio_web/constants/sns_links.dart';
import 'package:portfolio_web/widgets/custom_textfiled.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //text
          const Text(
            'Get in touch',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),

          const SizedBox(
            height: 50,
          ),

          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= kMinDesktopWidth) {
                    return buildNameEmailFieldDesktop();
                  }
                  return buildNameEmailFieldMobile();
                },
              )),
          const SizedBox(
            height: 15,
          ),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get in touch'),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.gMail]);
                  },
                  child: Image.asset(
                    'lib/assets/gmail_new.png',
                    width: 20,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedIn]);
                  },
                  child: Image.asset(
                    'lib/assets/linkedin_new.png',
                    width: 18,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.gitHub]);
                  },
                  child: Image.asset(
                    'lib/assets/github_new.png',
                    width: 21,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your name",
        )),
        SizedBox(
          width: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your email",
        ))
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your name",
        )),
        SizedBox(
          height: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your email",
        ))
      ],
    );
  }
}
