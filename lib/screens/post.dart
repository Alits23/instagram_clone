import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Post',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(width: 15),
            Image.asset('images/icon_arrow_down.png'),
            Spacer(),
            Text(
              'Next',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(width: 15),
            Image.asset('images/icon_arrow_right_box.png'),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 17,
            right: 17,
            top: 12,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                width: 394,
                height: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/item0.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/item$index.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                        color: pinkColorIcon,
                      ),
                      width: 128,
                      height: 128,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Container(
          height: 68,
          color: backgroundColor2,
          padding:
              const EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Draft',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 16,
                  color: pinkColorIcon,
                ),
              ),
              Text(
                'Gallery',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Take',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
