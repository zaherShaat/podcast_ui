import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class FavouriteBox extends StatelessWidget {
  const FavouriteBox({super.key, required this.onFavPressed});
  final void Function() onFavPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background image
        Container(
          width: getProportionateScreenWidth(122),
          height: getProportionateScreenHeight(123),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              image: AssetImage(eventBackAsset), // Replace with your image path
              fit: BoxFit.fill,
            ),
          ),
        ),

        // Overlay content
        SizedBox(
          width: getProportionateScreenWidth(122),
          height: getProportionateScreenHeight(123),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: _FavouriteHeart(
                  onPressed: onFavPressed,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FavouriteHeart extends StatefulWidget {
  const _FavouriteHeart({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  State<_FavouriteHeart> createState() => __FavouriteHeartState();
}

class __FavouriteHeartState extends State<_FavouriteHeart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(4.5),
      alignment: Alignment.center,
      height: 21,
      width: 21,
      child: InkWell(
        onTap: widget.onPressed,
        child: const Icon(
          size: 13,
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
