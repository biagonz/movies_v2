import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:movies_v2/layout_demo.dart';
import 'package:movies_v2/movies_list.dart';
import 'package:movies_v2/movies_list_error.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  MoviesList? movies;
  MoviesListError? moviesListError;

  Future<void> _getListAPI() async {
    await Future.delayed(const Duration(seconds: 2));
    http.get(
      Uri.https(
        'api.themoviedb.org',
        '4/list/1',
      ),
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYjEyNGM0NWE1Y2ZhYTkzNzczNzliMzM3YjA5ZDM5MCIsIm5iZiI6MTcxOTQzOTI2MS4wMDMzNjMsInN1YiI6IjY1Y2FjNjAyZjQ0ZjI3MDE4MzJkYzkzYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GNVPCOHrF0KuoRSK83xlPhZVo9Rj8A74GWzh86aNHBY'
      },
    ).then(
      (Response value) {
        if (value.statusCode == 200) {
          movies = MoviesList.fromJson(jsonDecode(value.body));
        } else if ([401, 404, 500].contains(value.statusCode)) {
          moviesListError = MoviesListError.formJson(
            jsonDecode(value.body),
          );
        }
      },
    ).whenComplete(() => setState(() {}));
  }

  @override
  void initState() {
    super.initState();
    _getListAPI();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LayoutDemoApp()
        // home: Scaffold(
        //   backgroundColor: Colors.blue,
        //   body: Center(
        //     child: moviesListError != null
        //         ? Text(moviesListError.toString())
        //         : Text('Movie: ${movies?.name ?? 'Erro'}'),
        //   ),
        // ),
        );
  }
}
