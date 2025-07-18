import 'package:flutter/material.dart';
import '../gallery.dart';
import '../shop.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'เมนูหลัก',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('หน้าหลัก'),
            onTap: () {
              Navigator.pop(context); // ปิด Drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('แกลเลอรี่'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GalleryPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('ร้านค้า'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShopPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
