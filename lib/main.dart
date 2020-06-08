import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<QuoteList> {

  List<Quote> quotes =[
   Quote(author: 'Khem Agarwal',text: 'Be yourself'),
    Quote(author: 'Khem Bhai',text: 'Chill mar bantai'),
    Quote(author: 'Khem Sir',text: 'Your past made you you'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,


      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }

        )).toList(),

      ),
    );
  }
}

