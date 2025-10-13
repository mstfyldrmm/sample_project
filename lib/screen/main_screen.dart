import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'Library',
          ),
        ],
      ),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/youtube.png',
                width: screenWidth * 0.2,
              ),
              //Elle verilmemesi lazim. Responsive yapilmali!!!
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.cast_connected_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            //sayfaya genel padding konularinda eksik durumdayim.
            //padding standartlastirma konusu
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: screenHeight * 0.044,
              width: screenWidth * 0.88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.explore),
                    label: Text('Explore', textAlign: TextAlign.center),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: VerticalDivider(),
                  ),
                  SizedBox(
                    width: screenWidth * 0.5,
                    child: CategoryWidget(screenWidth: screenWidth),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.33,
            child: YoutubePostWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Image.asset('assets/images/shorts.png'),
          ),
          SizedBox(
            height: screenHeight * 0.32,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (BuildContext context, int index) {
                return StoryWidget(
                  width: screenWidth / 2.5,
                  title:
                      'DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..',
                  views: '24M views',
                );
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class YoutubePostWidget extends StatelessWidget {
  const YoutubePostWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/rectangle.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.6,
                    child: Text(
                      'The Beauty of Existence - Heart Touching Nasheed',
                      softWrap: true,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text('19,210,251 views'),
                      Text('• Jul 1, 2016 '),
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(width: screenWidth * 0.03),
      itemCount: 10,
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: () {},
          child: Text('All'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      },
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    required this.width,
    required this.title,
    required this.views,
  });

  final double width;
  final String imagePath = 'assets/images/storyOne.jpg';
  final String title;
  final String views;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
            Text(
              views,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath)),
      ),
    );
  }
}
