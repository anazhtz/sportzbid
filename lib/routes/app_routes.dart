// import 'package:flutter/material.dart';


// class AppRoutes {
//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return _buildPageRoute(
//           builder: (context) => const SplashScreen(),
//           settings: settings,
//         );
//       case '/login':
//         return _buildPageRoute(
//           builder: (context) => const LoginPage(),
//           settings: settings,
//         );
//       case '/homepage':
//         return _buildPageRoute(
//           builder: (context) => const HomePage(),
//           settings: settings,
//         );
//       case '/menupage':
//         return _buildPageRoute(
//           builder: (context) => const ShopInGridView(),
//           settings: settings,
//         );
//       case '/searchfiled':
//         return _buildPageRoute(
//           builder: (context) => const SearchingScreen(),
//           settings: settings,
//         );
//       case '/floorDisplay':
//         final arrangementId = settings.arguments as String?;
//         return _buildPageRoute(
//           builder: (context) =>
//               FloordisplayView1(arrangementId: arrangementId ?? ''),
//           settings: settings,
//         );
//       case '/openingStock1':
//         return _buildPageRoute(
//           builder: (context) => const OpeningStockViewPage1(),
//           settings: settings,
//         );
//       case '/newStock1':
//         return _buildPageRoute(
//           builder: (context) => const NewStockViewPage1(),
//           settings: settings,
//         );
//       case '/closingStock1':
//         return _buildPageRoute(
//           builder: (context) => const ClosingStockViewPage1(),
//           settings: settings,
//         );
//       case '/categoryManagement':
//         final arrangementId = settings.arguments as bool?;
//         return _buildPageRoute(
//           builder: (context) =>
//               CategoryManagementView1(arrangementId: arrangementId ?? true),
//           settings: settings,
//         );
//       case '/outofstock':
//         final arrangementId = settings.arguments as String?;

//         return _buildPageRoute(
//             builder: (context) => OutofStockView1(
//                   arrangementId: arrangementId ?? '',
//                 ),
//             settings: settings);
//       case '/assettrack':
//         return _buildPageRoute(
//           builder: (context) => const AssetTrackViewPage1(),
//           settings: settings,
//         );

//       case '/dashboard':
//       // final args = settings.arguments as Map<String, dynamic>;
//       // return _buildPageRoute(
//       //   builder: (context) => DetailScreen(data: args['data']),
//       //   settings: settings,
//       // );
//       case '/DsrManagement':
//         return _buildPageRoute(
//           builder: (context) => const DsrManagement(),
//           settings: settings,
//         );

//       case '/marketingIntelligence':
//         return _buildPageRoute(
//             builder: (context) => const MarketingIntelligenceView(),
//             settings: settings);

//       default:
//         return _buildPageRoute(
//           builder: (context) => NotFoundScreen(),
//           settings: settings,
//         );
//     }
//   }

//   static PageRouteBuilder _buildPageRoute({
//     required WidgetBuilder builder,
//     required RouteSettings settings,
//   }) {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) => builder(context),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return FadeTransition(
//           opacity: animation,
//           child: child,
//         );
//       },
//       settings: settings,
//     );
//   }
// }
