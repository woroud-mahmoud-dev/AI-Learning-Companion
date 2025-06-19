part of 'utils.dart';

class AppStyle {
  static TextStyle style12 = TextStyle(color: AppColors.black, fontSize: 12.sp);
  static TextStyle style14Bold(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodySmall?.color,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
  static TextStyle style12Bold(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodySmall?.color,
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
  );
  static TextStyle style14(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodySmall?.color,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
  static TextStyle style14Gray = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
  );
  static TextStyle style16(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodySmall?.color,

    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style17Bold = TextStyle(
    color: AppColors.black,
    fontSize: 17.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style18 = TextStyle(
    color: AppColors.black,
    fontSize: 18.sp,
    height: 0,
  );

  static TextStyle style18Bold = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style20Bold = TextStyle(
    color: AppColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style20 = TextStyle(
    color: AppColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style22Bold = TextStyle(
    color: AppColors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static TextStyle style22 = TextStyle(
    color: AppColors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.normal,
    height: 0,
  );
  static TextStyle style24Bold(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodyLarge?.color,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style26Bold(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.bodyLarge?.color,
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style32Bold = TextStyle(
    color: AppColors.black,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    height: 0,
  );
  static BoxDecoration customWhiteDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );
}
