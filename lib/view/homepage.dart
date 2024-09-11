import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/core_widgets/csutom_drawer.dart';
import 'package:sportzbid/core_widgets/custom_searchbar.dart';
import 'package:sportzbid/core_widgets/tournement_card.dart';
import 'package:sportzbid/model/tournementclass.dart';
import 'package:sportzbid/utilis/responsive.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  // Sample data - replace with your own data fetching logic
  final List<Tournament> tournaments = [
    Tournament(
      title: 'Demons Champions League',
      location: 'Palakkad, Kerala',
      date: '24-08-2025',
      sport: 'Cricket',
      buttonText: 'Manage',
      buttonColor: AppColors.tournButtonColor,
    ),
    Tournament(
      title: 'Legends Football Cup',
      location: 'Kochi, Kerala',
      date: '15-09-2025',
      sport: 'Football',
      buttonText: 'Register',
      buttonColor: AppColors.buttonColor,
    ),
    Tournament(
      title: 'Summer Basketball Tournament',
      location: 'Thiruvananthapuram, Kerala',
      date: '30-09-2025',
      sport: 'Basketball',
      buttonText: 'Manage',
      buttonColor: AppColors.buttonColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    final filteredTournaments = tournaments
        .where((tournament) =>
            tournament.title
                .toLowerCase()
                .contains(_searchQuery.toLowerCase()) ||
            tournament.location
                .toLowerCase()
                .contains(_searchQuery.toLowerCase()) ||
            tournament.sport.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: responsive.hp(10),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: responsive.hp(5),
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: const Color(0xFF1E1E2E),
              size: responsive.hp(5),
            ),
          ),
          SizedBox(width: responsive.wp(5)),
        ],
      ),
      drawer: const CustomDrawer(currentPage: 'Home'), 
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Tournament name, location, or sport',
                      hintStyle: AppTypography.interRegular.copyWith(
                        fontSize: responsive.sp(18),
                        color: Colors.white54,
                      ),
                      filled: true,
                      fillColor: AppColors.primaryColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CustomSearchBarButton(responsive: responsive)
              ],
            ),
          ),
          const SizedBox(height: 0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                itemCount: filteredTournaments.length,
                itemBuilder: (context, index) {
                  final tournament = filteredTournaments[index];
                  return TournamentCard(
                    title: tournament.title,
                    location: tournament.location,
                    date: tournament.date,
                    sport: tournament.sport,
                    buttonText: tournament.buttonText,
                    buttonColor: tournament.buttonColor,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
