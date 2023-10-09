
import 'package:icloud/assets/items_images.dart';
import 'package:icloud/assets/items_urls.dart';
import 'package:icloud/widgets/tapable_items.dart';
import 'package:url_launcher/url_launcher.dart';

List icloudItemsList = [
  TapableItems(
    imageUrl: ItemsImages.driveImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.driveUrl)) {
        throw Exception('Could not launch ${ItemsUrls.driveUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.contactsImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.contactsUrl)) {
        throw Exception('Could not launch ${ItemsUrls.contactsUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.notesImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.notesUrl)) {
        throw Exception('Could not launch ${ItemsUrls.notesUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.remindersImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.remindersUrl)) {
        throw Exception('Could not launch ${ItemsUrls.remindersUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.photosImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.photosUrl)) {
        throw Exception('Could not launch ${ItemsUrls.photosUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.calendersImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.calendersUrl)) {
        throw Exception('Could not launch ${ItemsUrls.calendersUrl}');
      }
    },
  ),
  TapableItems(
    imageUrl: ItemsImages.findImage,
    onPressed: () async {
      if (!await launchUrl(ItemsUrls.findUrl)) {
        throw Exception('Could not launch ${ItemsUrls.findUrl}');
      }
    },
  ),
];
