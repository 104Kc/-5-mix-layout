import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // รูปภาพสินค้า (ใช้ชุดเดียวกับ gallery.dart)
    final List<String> images = [
      'https://img.lovepik.com/bg/20231221/Chinese-Dragon-Background-Wallpapers_2664285_wh1200.jpg',
      'https://p2crires.cri.cn/yafei/p2/M00/37/26/rBABDGE2HGqASWR1AAAAAAAAAAA911.669x876.png',
      'https://as2.ftcdn.net/v2/jpg/07/26/56/93/1000_F_726569339_L8fUWPeWWAyHOiIteRlUD2zzxV5y2kSf.jpg',
      'https://img.pikbest.com/origin/09/20/31/10ypIkbEsTum3.png!bw700',
      'https://image.tnews.co.th/newscenter/images/userfiles/images/S__47587350.jpg',
      'https://tse1.mm.bing.net/th/id/OIP.Bt7mJ6pBlG8jDnCe8___EQHaEJ?pid=Api&P=0&h=220',
      'https://tse1.mm.bing.net/th/id/OIP.lLH0a9ZctsW0tn7fYQjK2AHaHa?pid=Api&P=0&h=220',
      'https://a-static.besthdwallpaper.com/chinese-dragon-vs-phoenix-wallpaper-1280x768-101276_13.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
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
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  images[index],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'List ${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('คุณกดซื้อ List ${index + 1}')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('กดซื้อ'),
              ),
            ),
          );
        },
      ),
    );
  }
}
