import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              '중앙동',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100, // overflow 방지
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // start 기준으로 children 정렬
        children: [
          // CilpRRect 를 통해 이미지에 곡선 border 생성
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            // 이미지
            child: Image.network(
              'https://cdn2.thecatapi.com/images/6bt.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  '봉천동 · 6분 전',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '100만원',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Spacer(), // 빈 공간 차지
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Colors.black54,
                            size: 16,
                          ),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
