import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:icu/profile/profile.dart';
import 'package:icu/fitness/wellness.dart';

/// Allows you to call intervals.ice, for now we're using Basic auth,
/// with API_KEY as the username and the api key as the password
/// To use a better auth flow you need to request access to David, plus
/// it seems like we'd need to proxy auth using a server to not bundle the
/// secrets with the mobile app
///
/// Since we're using basic auth, we can only act as the owner of the account
///
/// See https://intervals.icu/api/v1/docs/swagger-ui/index.html
class IntervalsAPI {
  final String _apiKey;

  const IntervalsAPI({required String apiKey}) : _apiKey = apiKey;

  Future<Profile> getUserProfile(String userId) async {
    final url =
        Uri.parse('https://intervals.icu/api/v1/athlete/$userId/profile');

    final response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode('API_KEY:$_apiKey'))}',
      },
    );

    if (response.statusCode != 200) {
      return Future.error('Failed retreiving user profile');
    }

    final json = jsonDecode(response.body);

    return Profile.fromJson(json);
  }

  Future<Wellness> getUserWellness() async {
    // TODO(juaoose)
    const date = 'iDontKnowWhatFormat';
    const userId = 'userid';

    final url =
        Uri.parse('http://intervals.icu/api/v1/athlete/$userId/wellness/$date');

    final response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode('$_apiKey:'))}',
      },
    );

    if (response.statusCode != 200) {
      return Future.error('Failed retreiving user wellness data');
    }

    final json = jsonDecode(response.body);

    return Wellness.fromJson(json);
  }
}
