sealed class AppException implements Exception {}

class CacheException extends AppException {}

class ServerException extends AppException {}

class TimeoutException extends AppException {}

class NotFoundException extends AppException {}

class UnauthorisedException extends AppException {}

class BadRequestException extends AppException {}
