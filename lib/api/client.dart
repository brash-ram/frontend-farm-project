import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'authentication_controller.dart';
import 'client_index.dart';


final apiClient = Api.create(
  baseUrl: Uri.http(dotenv.get('API_HOST', fallback: '127.0.0.1:8080')),
  interceptors: [
    authenticationController.interceptor,
  ],
);
