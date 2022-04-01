import 'dart:math';

abstract class Helper{
  static final random = Random();

  static String randomPicture(){
    final int randomInt = random.nextInt(10000);
    return 'https://picsum.photos/seed/$randomInt/300/300';
  }

  static DateTime randomDate(){
    final random = Random();
    final date = DateTime.now();
    return date.subtract(Duration(seconds: random.nextInt(200000)));
  }
}