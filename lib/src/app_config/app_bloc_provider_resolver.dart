import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shipping_address/src/feature/shopping/bloc/all_address_by_membership/all_address_by_membership_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/city_bloc/city_bloc.dart';
import 'package:shipping_address/src/feature/shopping/bloc/country_bloc/country_bloc.dart';
import 'package:shipping_address/src/feature/shopping/data/data_provider/all_address_by_membership_data_provider.dart';
import 'package:shipping_address/src/feature/shopping/data/data_provider/country_data_provider.dart';
import 'package:shipping_address/src/feature/shopping/data/data_provider/delete_address_data_provider.dart';
import 'package:shipping_address/src/feature/shopping/data/repository/city_repository.dart';
import 'package:shipping_address/src/feature/shopping/data/repository/country_repository.dart';

import '../feature/dashboard/bloc/dash_board_bottom_nav_index_cubit.dart';
import '../feature/shopping/bloc/add_address_bloc/add_address_bloc.dart';
import '../feature/shopping/bloc/delete_address_bloc/delete_address_bloc.dart';
import '../feature/shopping/data/data_provider/add_address_data_provider.dart';
import '../feature/shopping/data/data_provider/city_data_provider.dart';
import '../feature/shopping/data/repository/add_address_repository.dart';
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

    /// Add Address
    BlocProvider(
      create: (context) => AddAddressBloc(context.read<AddAddressRepository>()),
    ),

    /// City List
    BlocProvider(create: (context) => CityBloc(context.read<CityRepository>())),

    /// Country List
    BlocProvider(
      create: (context) => CountryBloc(context.read<CountryRepository>()),
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

    /// Add Address
    RepositoryProvider<AddAddressRepository>(
      create: (context) => AddAddressRepository(AddAddressDataProvider()),
    ),

    /// City List
    RepositoryProvider<CityRepository>(
      create: (context) => CityRepository(CityDataProvider()),
    ),

    /// Country List
    RepositoryProvider<CountryRepository>(
      create: (context) => CountryRepository(CountryDataProvider()),
    ),
  ];
}
