import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/modules/get_news_module.dart';
import 'package:news_app/data/repositories/get_news_repo.dart';

part 'homescreen_state.dart';

class HomescreenCubit extends Cubit<HomescreenState> {
  HomescreenCubit() : super(HomescreenInitial());

  Future<void> getUpdates() async {
    emit(HomescreenLoading());

    NewsResponse? myNews = await GetNewsRepo().getNews();

    if (myNews != null) {
      emit(HomescreenSuccess(myNews));
    } else {
      emit(HomescreenError());
    }
  }
}
