import 'dart:math';

class CatService {
  Future<List<String>> fetchCatImages({int width = 100, int height = 100}) async {
    List<String> imageUrls = [];

    // Genera URLs únicas para obtener imágenes de gatos con ancho o altura específica
    String uniqueParam = Random().nextInt(100000).toString();
    imageUrls.add('https://cataas.com/cat?width=$width&unique=$uniqueParam');
    imageUrls.add('https://cataas.com/cat?height=$height&unique=$uniqueParam');

    return imageUrls;
  }
}
