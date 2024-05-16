import 'package:flutter/material.dart';
import 'package:flutter_day_17/generated/assets.dart';
import 'package:flutter_day_17/pages/main/widgets/gallery_view_widget.dart';
import 'package:flutter_day_17/pages/main/widgets/grid_view_widget.dart';
import 'package:flutter_day_17/pages/main/widgets/list_view_widget.dart';

import '../../models/product.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int option = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Мы нашли более ${products.length} объявлений",
          style: const TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(Assets.iconsSort, height: 20),
          ),
          PopupMenuButton(
            offset: const Offset(-15, 45),
            icon: const Icon(Icons.grid_view_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Галерея'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 0 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 0;
                    });
                  },
                ),
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Список'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 1 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 1;
                    });
                  },
                ),
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Плитка'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 2 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 2;
                    });
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: [
        const GalleryViewWidget(),
        const ListViewWidget(),
        const GridViewWidget(),
      ][option],
    );
  }
}
