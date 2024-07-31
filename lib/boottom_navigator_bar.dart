import 'package:flutter/material.dart';

class boottom_navigator extends StatefulWidget {
  const boottom_navigator({super.key});

  @override
  State<boottom_navigator> createState() => _boottom_navigatorState();
}

class _boottom_navigatorState extends State<boottom_navigator>
with SingleTickerProviderStateMixin {


  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(
        () => setState(() {
          _selectedIndex = _tabController.index;
        })
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("바텀 네비게이션 페이지"),
      ),
      body: _selectedIndex ==0 ?
          tabContainer(context, Colors.indigo, "Friends Tab")
         : _selectedIndex == 1? tabContainer(context, Colors.yellow, "Chats Tab")
         : tabContainer(context, Colors.blue, "Settings Tab"),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: "Friends",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "chat",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "setting",
            ),
          ],
        ),
      ),
    );
  }


  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
            color: Colors.grey
  ),
  ),
  ),
  );
  }
}
