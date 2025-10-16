import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/single_child_widget.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership_bloc.dart';
import 'package:shipping_address/src/feature/shopping/data/all_address_by_membership_data_provider.dart';
import 'package:shipping_address/src/feature/shopping/data/all_address_by_membership_repository.dart';

import '../feature/dashboard/bloc/dash_board_bottom_nav_index_cubit.dart';


class AppBlocProviderResolver {
  static final List<SingleChildWidget> blocProviders = [
    BlocProvider(create: (context) => DashBoardBottomNavIndexCubit()),
    BlocProvider(
      create: (context) =>
          AllAddressByMembershipBloc( context.read<AllAddressByMembershipRepository>()),
    ),

  ];

  static final List<SingleChildWidget> repositoriesProviders = [
    RepositoryProvider<AllAddressByMembershipRepository>(
      create: (context) =>
          AllAddressByMembershipRepository(AllAddressByMembershipDataProvider()),
    ),

  ];
}