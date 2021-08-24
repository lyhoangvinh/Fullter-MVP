import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtest/model/VideoJav.dart';
import 'package:newtest/ui/home/HomePresenter.dart';
import 'package:newtest/ui/base/BaseView.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends BaseView {
  late HomePresenter homePresenter;

  @override
  void initState() {
    super.initState();
    homePresenter = HomePresenter(this);
    homePresenter.getVideos();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: Text(
            'Videos Jav',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: _buildPosts(context, homePresenter.videos),
      ),
    );
  }

  // FutureBuilder<List<VideoJav>> _buildBody(BuildContext context) {
  //   return FutureBuilder<List<VideoJav>>(
  //     future:,
  //     builder: (context, snapshot) {
  //       if (snapshot.connectionState == ConnectionState.done) {
  //         final List<VideoJav> posts = snapshot.data;
  //         return _buildPosts(context, posts);
  //       } else {
  //         return Center(
  //           child: CircularProgressIndicator(),
  //         );
  //       }
  //     },
  //   );
  // }

  ListView _buildPosts(BuildContext context, List<VideoJav> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
              title: Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
          ),
        );
      },
    );
  }
}
