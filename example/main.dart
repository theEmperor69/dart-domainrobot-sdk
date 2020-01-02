import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';

void main(List<String> args) async {
  // The domainrobot credentials and the baseUrl
  var userName = 'USER';
  var password = 'PASSWORD';
  var context = 'CONTEXT';
  var baseUrl = 'URL';

  // Setup the provider
  var provider = DomainRobotProvider(userName, password, context, baseUrl);

  var ctid = 'Some UUID';
  // Define the custom headers
  var headers = {
    DOMAINROBOT_HEADER_WEBSOCKET: 'SYNC',
    DOMAINROBOT_HEADER_CTID: ctid,
  };
  var search = DomainStudioSearch(
    searchToken: 'treehouse',
    sources: DomainStudioSources(
      initial: DomainStudioSourceInitial(
        tlds: ['com', 'net', 'de'],
      ),
    ),
  );
  try {
    var domains = await provider.domainStudioSearch(search, headers: headers);
    if (domains != null && domains.isNotEmpty) {
      print('Result from the DomainStudio:');
      for (var domain in domains) {
        print(domain.domain);
      }
    }
  } on DomainRobotApiException catch (e) {
    // Handle error from the API
    print('Got http status > 299');
    print(e.toString());
  } on Exception catch (e) {
    // Handle any other exception
    print('Unexpected error while communicating with the api.');
    print(e.toString());
  }
}
