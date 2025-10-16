import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership/all_address_by_membership_bloc.dart';
import 'package:shipping_address/src/feature/shopping/data/data_provider/all_address_by_membership_data_provider.dart';
import 'package:shipping_address/src/feature/shopping/data/data_provider/delete_address_data_provider.dart';

import '../feature/dashboard/bloc/dash_board_bottom_nav_index_cubit.dart';
import '../feature/shopping/bloc/delete_address_bloc/delete_address_bloc.dart';
import '../feature/shopping/data/repository/all_address_by_membership_repository.dart';
import '../feature/shopping/data/repository/delete_address_repository.dart';

class AppBlocProviderResolver {
  static final List<SingleChildWidget> blocProviders = [
    BlocProvider(create: (context) => DashBoardBottomNavIndexCubit()),

    /// All Address By Membership
    BlocProvider(
      create: (context) => AllAddressByMembershipBloc(
        context.read<AllAddressByMembershipRepository>(),
      ),
    ),

    /// Delete address
    BlocProvider(
      create: (context) =>
          DeleteAddressBloc(context.read<DeleteAddressRepository>()),
    ),
  ];

  static final List<SingleChildWidget> repositoriesProviders = [
    /// All Address By Membership
    RepositoryProvider<AllAddressByMembershipRepository>(
      create: (context) => AllAddressByMembershipRepository(
        AllAddressByMembershipDataProvider(),
      ),
    ),

    /// Delete address
    RepositoryProvider<DeleteAddressRepository>(
      create: (context) => DeleteAddressRepository(DeleteAddressDataProvider()),
    ),
  ];
}
