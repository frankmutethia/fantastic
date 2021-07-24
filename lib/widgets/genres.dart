import 'package:fantastic/bloc/get_genres_bloc.dart';
import 'package:fantastic/model/genre.dart';
import 'package:fantastic/model/genre_feedback.dart';
import 'package:fantastic/widgets/genres_list.dart';
import 'package:flutter/material.dart';

class GenresScreen extends StatefulWidget {
  // const GenresScreen({ Key? key }) : super(key: key);

  @override
  _GenresScreenState createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {
  @override
  void initState() {
    super.initState();
    genresBloc.getGenres();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<GenreFeedback>(
      stream: genresBloc.subject.stream,
      builder: (context, AsyncSnapshot<GenreFeedback> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.error != null && snapshot.data.error.length > 0) {
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildGenresWidget(snapshot.data);
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25.0,
          width: 25.0,
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 4.0,
          ),
        )
      ],
    ));
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error occured: $error"),
      ],
    ));
  }

  Widget _buildGenresWidget(GenreFeedback data) {
    List<Genre> genre = data.genres;
    if (genre.length == 0) {
      return Container(
        child: Text("No Genre"),
      );
    } else
      return GenresList(genres: genre);
  }
}
