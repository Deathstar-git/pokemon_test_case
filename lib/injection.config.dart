// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokemon_test_case/bloc/pokemon_bloc/pokemon_bloc.dart' as _i8;
import 'package:pokemon_test_case/domain/features/pokemon/i_pokemon_repository.dart'
    as _i6;
import 'package:pokemon_test_case/infrascructure/common/injection_module.dart'
    as _i9;
import 'package:pokemon_test_case/infrascructure/features/pokemon/PokemonRepository.dart'
    as _i7;
import 'package:pokemon_test_case/infrascructure/features/services/pokemon_api.dart'
    as _i5;
import 'package:pokemon_test_case/ui/navigation/routes.gr.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i3.AppRouter>(() => serviceModule.router);
    gh.factory<_i4.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i5.PokemonApi>(() => serviceModule.api_client);
    gh.factory<_i6.IPokemonRepository>(
        () => _i7.PokemonRepository(gh<_i5.PokemonApi>()));
    gh.factory<_i8.PokemonBloc>(
        () => _i8.PokemonBloc(gh<_i6.IPokemonRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i9.ServiceModule {}
