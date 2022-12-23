import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  DownloadsBloc() : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) {
      emit(state.copyWith(
        isLoading: true,
        downloadsFailureOrSuccessOption: none(),
      ));
    });
  }
}
