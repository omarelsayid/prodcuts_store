import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/Featuers/home/data/repos/home_repo.dart';
import 'package:shoes_app/Featuers/home/presentation/manager/fetch_products_cubit.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/home_view_body.dart';
import 'package:shoes_app/core/service/get_it_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => FetchProductsCubit(getIt.get<HomeRepo>()),
        child: HomeViewBody(),
      ),
    );
  }
}
