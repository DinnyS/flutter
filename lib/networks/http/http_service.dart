abstract class HttpService{

  final String url;

  HttpService( this.url);

  Future<dynamic> get(String patch);
  Future<dynamic> delete(String patch);
  Future<dynamic> post(String patch , dynamic data);
  Future<dynamic> put(String patch , dynamic data);
  Future<dynamic> patch(String patch , dynamic data);

}