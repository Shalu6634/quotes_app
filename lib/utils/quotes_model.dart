// import 'package:flutter/material.dart';
// import 'package:quotes_app/utils/quotesAllList/quotesList.dart';

class QuoteModel {
  String? quote;
  String? author;
  String? category;
  String? img;

  List quoteListModel = [];

  QuoteModel({this.author, this.quote, this.category,this.img});

  factory QuoteModel.fromQuote(Map m1) {
    return QuoteModel(
        author: m1['author'], quote: m1['quote'], category: m1['category'],img: m1['img']);
  }

  QuoteModel.toList(List l1) {
    for (int i = 0; i < l1.length; i++) {
      quoteListModel.add(
        QuoteModel.fromQuote(l1[i]),
      );
    }
  }
}
