import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tap2024/models/popular_model.dart';

class PopularView extends StatelessWidget {
   PopularView({super.key,this.popularModel});


PopularModel? popularModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: 'https://image.tmdb.org/t/p/w500/${popularModel!.backdropPath}',
          placeholder: (context,url) => const CircularProgressIndicator(),
          errorWidget: (context,url,error) => Image.network('https://edteam-media.s3.amazonaws.com/blogs/big/2ab53939-9b50-47dd-b56e-38d4ba3cc0f0.png'),
        ),
      ),
    );
  }
}