import '../../general_exports.dart';

CommonTextModel txtHeading = CommonTextModel(
  fontSize: COMMON_H1_FONT,
  fontFamily: 'AlMessiri',
  fontColor: AppColors.primary,
  fontWeight: FontWeight.bold,
  shadows: <Shadow>[
    BoxShadow(
      color: Color(AppColors.primaryOpacity),
      blurRadius: 1,
      offset: const Offset(0, 3),
    ),
  ],
);

CommonTextModel txtHomeLabeled = CommonTextModel(
  fontSize: COMMON_HEADER_FONT,
  fontFamily: 'Tajawal',
  fontColor: AppColors.colorBlack,
  fontWeight: FontWeight.bold,
  columnCrossAxisAlignment: CrossAxisAlignment.start,
  textAlign: TextAlign.right,
);

CommonTextModel txtLabeledCategory = CommonTextModel(
  //fontSize: COMMON_H4_FONT,
  fontFamily: 'Tajawal',
  fontColor: AppColors.grey,
  // fontWeight: FontWeight.w400,
);

CommonTextModel txtItemCard = CommonTextModel(
  fontSize: COMMON_H3_FONT,
  fontColor: AppColors.colorBlack,
  fontWeight: FontWeight.w600,
);
