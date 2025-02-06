import 'package:flutter/material.dart';
import 'package:zzzbookly/features/home/presentaion/views/widgets/book_item.dart';

class BookItemList extends StatelessWidget {
  const BookItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.all(8.0), child: BookItem()),
        itemCount: 10);
  }
}
