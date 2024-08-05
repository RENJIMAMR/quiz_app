import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constants.dart';

class OptionCard extends StatefulWidget {
  const OptionCard(
      {super.key,
      required this.answer,
      this.oncardpressed,
      this.borderColor,
      this.checkColor = null,
      this.isIcon});
  final String answer;
  final Color? borderColor, checkColor;
  final Widget? isIcon;
  final void Function()? oncardpressed;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.oncardpressed,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1,
                    color: widget.borderColor ?? ColorConstants.MainGrey)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      widget.answer,
                      style: TextStyle(
                          color: ColorConstants.MainWhite, fontSize: 17),
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor:
                        widget.checkColor ?? ColorConstants.MainGrey,
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.MainBlack,
                      radius: 11,
                      child: widget.isIcon ?? widget.isIcon,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
