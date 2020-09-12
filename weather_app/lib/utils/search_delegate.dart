import 'package:flutter/material.dart';
import 'package:weather_app/models/google_address.dart';
import 'package:weather_app/services/adrdress_service.dart';
import 'package:weather_app/utils/country_manager.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => 'Search City Name';

  @override
  TextStyle get searchFieldStyle => TextStyle(
        fontSize: 18.0,
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      );

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.white,
      primaryIconTheme: theme.primaryIconTheme.copyWith(
        color: Colors.black,
      ),
      primaryColorBrightness: Brightness.light,
      textTheme: theme.textTheme.copyWith(
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      primaryTextTheme: theme.textTheme,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  // ignore: missing_return
  Widget buildResults(BuildContext context) {
    this.showSuggestions(context);
    FocusScope.of(context).unfocus();
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 50.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Search City',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return FutureBuilder(
      future: AddressService().getAddress(query),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          GoogleAddress _googleAddress = snapshot.data;
          print('status is ${_googleAddress.status}');
          print('data is ${_googleAddress.predictions}');
          if (_googleAddress.status == 'OK') {
            return ListView.builder(
              itemBuilder: (context, index) {
                int countryIndex =_googleAddress.predictions[index].terms.length-1;
                String countryCode=getCodeFromCountryName(_googleAddress.predictions[index].terms[countryIndex].value);
                return ListTile(
                  onTap: () {
                    query = '';
                    this.close(context,
                        _googleAddress.predictions[index].terms[0].value);
                  },
                  leading: IconButton(
                      icon: Icon(Icons.location_city), onPressed: null),
                  title: Text(_googleAddress.predictions[index].terms[0].value),
                  subtitle:
                      Text(_googleAddress.predictions[index].terms[countryIndex].value),
                );
              },
              itemCount: _googleAddress.predictions.length,
            );
          } else {
            return Center(
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No city found !',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '☹',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
            );
          }
        }
      },
    );
  }
}
