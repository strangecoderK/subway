import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway/data/data_source/subway_api_impl.dart';
import 'package:subway/data/repository/subway_repository_impl.dart';
import 'package:subway/presentation/screen/main__page_view_model.dart';
import 'package:subway/presentation/screen/main_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return ChangeNotifierProvider<MainPageViewModel>(
        create: (context) => MainPageViewModel(
            repository: SubwayRepositoryImpl(dataSource: SubwayApiImpl())),
        child: const MainPage(),
      );
    },
  )
]);
