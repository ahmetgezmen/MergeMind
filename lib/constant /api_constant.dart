class ApiConstant{

  static const String baseUrl = 'https://api.openai.com/v1/chat/completions';
  static const String baseUrlForDalee = 'https://api.openai.com/v1/images/generations';
  static const aIModel = 'gpt-3.5-turbo';
  static const int defaultPicturesNumber = 2;
  static const int defaultHeight = 1024;
  static const int defaultWidth = 1024;
  static const String responseFormat = 'b64_json';
  const ApiConstant._();
}