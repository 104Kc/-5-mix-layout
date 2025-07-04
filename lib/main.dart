import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: ContentView(),
        ),
      ),
    );
  }
}

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Bar
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.blue,
          child: const Center(
            child: Text(
              'ListView & GridView App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),

        // หัวข้อ GridView
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'รายการรูปภาพ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'ดูทั้งหมด',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        // GridView ด้านบน
        SizedBox(
  height: 300,
  child: GridView.builder(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    scrollDirection: Axis.horizontal,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1,
    ),
    itemCount: 8,
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.yellow[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: index == 0
              ? Image.network(
                  'https://img.lovepik.com/bg/20231221/Chinese-Dragon-Background-Wallpapers_2664285_wh1200.jpg',
                  fit: BoxFit.cover,
                )
              : index == 1
                  ? Image.network(
                      'https://as2.ftcdn.net/v2/jpg/07/26/56/93/1000_F_726569339_L8fUWPeWWAyHOiIteRlUD2zzxV5y2kSf.jpg',
                      fit: BoxFit.cover,
                    )
                    : index == 2
                  ? Image.network(
                      'https://image.tnews.co.th/newscenter/images/userfiles/images/S__47587350.jpg',
                      fit: BoxFit.cover,
                    )
                    : index == 3
                  ? Image.network(
                      'https://p2crires.cri.cn/yafei/p2/M00/37/26/rBABDGE2HGqASWR1AAAAAAAAAAA911.669x876.png',
                      fit: BoxFit.cover,
                    )
                    : index == 4
                  ? Image.network(
                      'https://img.pikbest.com/origin/09/20/31/10ypIkbEsTum3.png!bw700',
                      fit: BoxFit.cover,
                    )
                    : index == 5
                  ? Image.network(
                      'https://tse1.mm.bing.net/th/id/OIP.lLH0a9ZctsW0tn7fYQjK2AHaHa?pid=Api&P=0&h=220',
                      fit: BoxFit.cover,
                    )
                    : index == 6
                  ? Image.network(
                      'https://tse1.mm.bing.net/th/id/OIP.Bt7mJ6pBlG8jDnCe8___EQHaEJ?pid=Api&P=0&h=220',
                      fit: BoxFit.cover,
                    )
                    : index == 7
                  ? Image.network(
                      'https://a-static.besthdwallpaper.com/chinese-dragon-vs-phoenix-wallpaper-1280x768-101276_13.jpg',
                      fit: BoxFit.cover,
                    )
                  : Center(
                      child: Text(
                        'Grid ${index + 1}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
        ),
      );
    },
  ),
),

        // หัวข้อ ListView
        const Padding(
          padding: EdgeInsets.fromLTRB(12, 16, 12, 4),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'รายการสินค้า',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        // ListView ด้านล่าง
        const Expanded(
          child: MyListView(),
        ),
      ],
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 30,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 220, 220),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 82, 167, 237).withAlpha(51),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text('List ${index + 1}'),
          ),
        );
      },
    );
  }
}