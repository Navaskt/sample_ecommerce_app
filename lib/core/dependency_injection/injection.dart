import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/dependency_injection/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
