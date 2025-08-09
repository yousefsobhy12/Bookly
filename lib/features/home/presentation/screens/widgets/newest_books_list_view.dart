import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/screens/widgets/newest_books_item.dart';
import 'package:bookly/features/home/presentation/screens/widgets/failure_state_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/newest_books_skeletonizer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: NewestBooksItem(book: state.books[index]),
                );
              },
            );
          } else if (state is NewestBooksLoading) {
            return Skeletonizer(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: NewestBooksSkeletonizerItem(),
                  );
                },
              ),
            );
          } else if (state is NewestBooksFailure) {
            return FailureStateWidget(message: state.message);
          } else {
            return Center(child: Text('Unexpected error'));
          }
        },
      ),
    );
  }
}
