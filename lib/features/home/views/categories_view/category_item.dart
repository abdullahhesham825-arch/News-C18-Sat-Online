import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/models/category_model.dart';
import 'package:news/providers/home_screen_provider.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({super.key, required this.category});
CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       context.read<HomeScreenProvider>().goToSources(category);
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.asset(category.imagePath, width: double.infinity,fit: BoxFit.fill,)),
    );
  }
}
