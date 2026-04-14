import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors_manager.dart';
import 'package:news/features/home/views/sources_view/article_item.dart';
import 'package:news/models/article.dart';
import 'package:news/models/source.dart';

class SourcesView extends StatelessWidget {
  SourcesView({super.key});

  List<Source> sources = [
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
    Source(id: "abc-news", name: "ABC News"),
  ];
  List<Article> articles = [
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
    Article(
      title:
          "Popular Musician Loses Life Savings Through Malicious Crypto Wallet in Apple’s App Store",
      description:
          "The theft apparently combined a counterfeit app with a critical mistake by the musician.",
      author: "Kyle Torpey",
      publishedAt: "2026-04-13T21:25:17Z",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: sources.length,
          child: TabBar(
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.transparent,
            indicatorColor: ColorsManager.white,
            isScrollable: true,
            labelStyle: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.white,
            ),
            unselectedLabelStyle: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorsManager.white,
            ),
            tabs: sources.map((source) => Tab(text: source.name)).toList(),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) => ArticleItem(article: articles[index]),
            separatorBuilder: (_, _) => SizedBox(height: 16.h),
            itemCount: articles.length,
          ),
        ),
      ],
    );
  }
}
