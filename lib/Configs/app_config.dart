const String baseUrl =
    "https://jsonplaceholder.typicode.com";
const String authHeader = "auth";

Map<String, String> header({token}) => {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      authHeader: 'application/json',
    };
