import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight * 2) / 4;
    return Card(
      color: Colors.black,
      child: Stack(
        children: [
          FadeInImage.memoryNetwork(
            image: image.toString(),
            placeholder: kTransparentImage,
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/flag_placeholder.jpg', fit: BoxFit.cover);
            },
            fit: BoxFit.cover,
          ),
          Row(children: [
            Expanded(child: Text(title,
                style: const TextStyle(fontSize: 14, color: Colors.red, backgroundColor: Colors.black26), overflow: TextOverflow.ellipsis))
          ])
        ],
      ),
    );
  }
}
