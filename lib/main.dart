import 'package:flutter/material.dart';
import 'package:icloud/assets/items_images.dart';
import 'package:icloud/assets/items_urls.dart';
import 'package:icloud/widgets/items_list.dart';
import 'package:icloud/widgets/tapable_items.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              TapableItems(
                imageUrl: ItemsImages.icloudImage,
                onPressed: () async {
                  if (!await launchUrl(ItemsUrls.icloudUrl)) {
                    throw Exception('Could not launch ${ItemsUrls.icloudUrl}');
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: SizedBox(
                  height: 200,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemCount: icloudItemsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return icloudItemsList[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
