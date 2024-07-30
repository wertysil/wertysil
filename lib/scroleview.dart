import 'package:flutter/material.dart';


class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  final ScrollController _scrollController = ScrollController();
  List _data = [];
  int _page = 1;
  bool _isLoding = false;
  bool _hasMoredata = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
    _scrollController.addListener(() {
      if (_scrollController.position.extentAfter < 300 && !_isLoding && _hasMoredata) {
        _fetchData();
      }
    });
  }
  Future<void> _fetchData async{
      setState(() {
        _isLoding = true;
      });

      final response = await http.get

}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
