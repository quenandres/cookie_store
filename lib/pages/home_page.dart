import 'package:cockie_store/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)), 
          onPressed: () {}        
        ),
        title: Text('Pickup',
          style: TextStyle(
            fontFamily: 'Schyler', fontSize: 20.0, color: Color(0xFF545D68)
          ),
        ),
        actions: <Widget>[
            IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)), 
            onPressed: () {}        
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only( left: 20.0 ),
        children: <Widget>[
          SizedBox( height: 20.0 ),
          Text('Categories',
            style: TextStyle(
              fontFamily: 'Schyler',
              fontSize: 42.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox( height: 15.0 ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only( right: 45.0  ),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text('Cookies',
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 21.0
                  ),
                ),
              ),
              Tab(
                child: Text('Cookie Cake',
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 21.0
                  ),
                ),
              ),
              Tab(
                child: Text('Ice Cream',
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 21.0
                  ),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),        
        child: Icon( Icons.fastfood ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}