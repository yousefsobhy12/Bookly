import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/app_service.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final AppService appService;

  HomeRepoImplementation(this.appService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await appService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioError(error));
    } catch (error) {
      return left(ServerFailure('An unexpected error occurred: $error'));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBook() async {
    try {
      var data = await appService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioError(error));
    } catch (error) {
      return left(ServerFailure('An unexpected error occurred: $error'));
    }
  }
}
