import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:news/core/resources/assets_manager.dart';
import 'package:news/core/resources/colors_manager.dart';
import 'package:news/data/apis/articlesResponse/Article.dart';

class ArticleItem extends StatelessWidget {
   ArticleItem({super.key, required this.article});
Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: ColorsManager.white, width: 1.w)
      ),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: article.urlToImage ?? '',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(height: 10.h,),
          Text(article.title ?? '', style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16.sp, color: ColorsManager.white),)
          ,SizedBox(height: 10.h,),
          Row(
            children: [
              Expanded(child: Text(article.author ?? '', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 12.sp, color: ColorsManager.grey),))
              ,Text(article.publishedAt ?? '', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 12.sp, color: ColorsManager.grey),)

            ],
          )
        ],
      ),
    );
  }
}
