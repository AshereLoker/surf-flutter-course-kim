import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/constants/app_sizes.dart';
import 'package:places/constants/app_strings.dart';
import 'package:places/constants/app_typography.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: AppSizes.heightImageDetails,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(AppSizes.commonPadding),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors.pictureGradient,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: AppSizes.sizeButtonBack,
                    width: AppSizes.sizeButtonBack,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(AppSizes.commonRadius),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.commonPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSizes.sizedBoxH24,
                  Text(
                    sight.name,
                    style: AppTypography.titleText24Bold,
                  ),
                  AppSizes.sizedBoxH2,
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: AppTypography.smallText14Bold.withColor(
                          AppColors.secondary,
                        ),
                      ),
                      const SizedBox(width: AppSizes.commonPadding),
                      Text(
                        'закрыто до 07:20',
                        style: AppTypography.smallText14Regular
                            .withColor(AppColors.secondary2),
                      ),
                    ],
                  ),
                  AppSizes.sizedBoxH24,
                  Text(
                    sight.details,
                    style: AppTypography.smallText14Regular
                        .withColor(AppColors.secondary),
                  ),
                  AppSizes.sizedBoxH24,
                  Container(
                    height: AppSizes.heightButton,
                    decoration: const BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(AppSizes.commonRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const _IconStopper(),
                        AppSizes.sizedBoxW10,
                        Text(
                          AppStrings.buildRoute.toUpperCase(),
                          style: AppTypography.smallText14Bold
                              .withColor(AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  AppSizes.sizedBoxH24,
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _BottomButton(
                        buttonColor: AppColors.secondary2.withOpacity(0.56),
                        buttonText: AppStrings.setPlaned,
                      ),
                      const _BottomButton(
                        buttonColor: AppColors.secondary,
                        buttonText: AppStrings.addFavorite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  static const double _horizontalPadding = 8;

  final Color buttonColor;
  final String buttonText;

  const _BottomButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
        vertical: AppSizes.commonPadding,
      ),
      child: Row(
        children: [
          _IconStopper(
            iconColor: buttonColor,
          ),
          AppSizes.sizedBoxW6,
          Text(
            buttonText,
            style: AppTypography.smallText14Regular.withColor(buttonColor),
          ),
        ],
      ),
    );
  }
}

/// [_IconStopper] используется как заглушка вместо иконок, пока не будут
/// добавлены необходимые иконки.
class _IconStopper extends StatelessWidget {
  final Color? iconColor;

  const _IconStopper({
    Key? key,
    this.iconColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.sizeIcon,
      width: AppSizes.sizeIcon,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSizes.radiusIcon),
          ),
        ),
      ),
    );
  }
}
