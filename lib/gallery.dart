import 'package:flutter/material.dart';
import 'full_image_page.dart'; // import หน้าใหม่

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://img.lovepik.com/bg/20231221/Chinese-Dragon-Background-Wallpapers_2664285_wh1200.jpg',
      'https://as2.ftcdn.net/v2/jpg/07/26/56/93/1000_F_726569339_L8fUWPeWWAyHOiIteRlUD2zzxV5y2kSf.jpg',
      'https://image.tnews.co.th/newscenter/images/userfiles/images/S__47587350.jpg',
      'https://p2crires.cri.cn/yafei/p2/M00/37/26/rBABDGE2HGqASWR1AAAAAAAAAAA911.669x876.png',
      'https://img.pikbest.com/origin/09/20/31/10ypIkbEsTum3.png!bw700',
      'https://tse1.mm.bing.net/th/id/OIP.lLH0a9ZctsW0tn7fYQjK2AHaHa?pid=Api&P=0&h=220',
      'https://tse1.mm.bing.net/th/id/OIP.Bt7mJ6pBlG8jDnCe8___EQHaEJ?pid=Api&P=0&h=220',
      'https://a-static.besthdwallpaper.com/chinese-dragon-vs-phoenix-wallpaper-1280x768-101276_13.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FullImagePage(imageUrl: images[index]),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
