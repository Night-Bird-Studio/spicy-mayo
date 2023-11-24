import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/entities/movie_entity.dart';
import 'back_to_top_widget.dart';
import 'movie_tile_widget.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({
    required this.movies,
    required this.onMovieClicked,
    required this.onRefresh,
    this.page,
    this.onNextPage,
    super.key,
  });

  final List<MovieEntity> movies;
  final int? page;
  final void Function(MovieEntity) onMovieClicked;
  final AsyncCallback onRefresh;
  final AsyncCallback? onNextPage;

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final ScrollController _scrollController = ScrollController();
  bool showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 6,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return InkWell(
                        onTap: () => widget.onMovieClicked(widget.movies[index]),
                        child: MovieTileWidget(
                          title: widget.movies[index].title,
                          imageUrl: '${dotenv.get('image_base_url')}${widget.movies[index].posterPath}',
                        ),
                      );
                    },
                    childCount: widget.movies.length,
                  ),
                ),
              ),
            ],
          ),
          if (showBackToTopButton)
            Positioned(
              bottom: 20,
              right: 20,
              child: BackToTopWidget(controller: _scrollController),
            ),
        ],
      ),
    );
  }

  void _scrollListener() {
    if (showBackToTopButton && _scrollController.offset == 0) {
      setState(() {
        showBackToTopButton = false;
      });
    }

    if (!showBackToTopButton && _scrollController.offset > 0) {
      setState(() {
        showBackToTopButton = true;
      });
    }

    if (_scrollController.offset >= _scrollController.position.maxScrollExtent - 300) {
      widget.onNextPage?.call();
    }
  }
}
