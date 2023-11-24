import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/theme/spacing.dart';
import '../../domain/entities/movie_entity.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const AppGap.regular(),
          Center(
            child: CachedNetworkImage(
              imageUrl: '${dotenv.get('image_base_url')}${movie.posterPath}',
              fit: BoxFit.contain,
            ),
          ),
          const AppGap.regular(),
          Text(context.translate().movieResume(movie.overview)),
          const AppGap.regular(),
          Text(context.translate().rating(movie.ratingAverage, movie.ratingCount)),
        ],
      ),
    );
  }
}
