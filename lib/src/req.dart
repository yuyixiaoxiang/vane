// Copyright (c) 2014, Robert Åkerblom-Andersson <Robert@dartvoid.com>
//
// Note: Parts of the comments are derived from the original dartlang code
// in cases were already documented members or functions are exposed. 

part of vane;

class VaneRequest {
  // Internal http request object 
  HttpRequest _req;
  
  VaneRequest(this._req);
  
  /**
   * The client certificate of the client making the request (read-only).
   *
   * This value is null if the connection is not a secure TLS or SSL connection,
   * or if the server does not request a client certificate, or if the client
   * does not provide one.
   */
  X509Certificate get certificate => _req.certificate;
  
  /**
   * Information about the client connection (read-only).
   *
   * Returns [:null:] if the socket is not available.
   */
  HttpConnectionInfo get connectionInfo => _req.connectionInfo;
  
  /**
   * The content length of the request body (read-only).
   *
   * If the size of the request body is not known in advance,
   * this value is -1.
   */
  int get contentLength => _req.contentLength;
  
  /**
   * The cookies in the request, from the Cookie headers (read-only).
   */
  List<Cookie> get cookies => _req.cookies;
  
  /**
   * The request headers (read-only).
   */
  HttpHeaders get headers => _req.headers;
  
  /**
   * The method, such as 'GET' or 'POST', for the request (read-only).
   */
  String get method => _req.method;
  
  /**
   * The persistent connection state signaled by the client (read-only).
   */
  bool get persistentConnection => _req.persistentConnection;
  
  /**
   * The HTTP protocol version used in the request,
   * either "1.0" or "1.1" (read-only).
   */
  String get protocolVersion => _req.protocolVersion;
  
  /**
   * The requested URI for the request (read-only).
   *
   * The returend URI is reconstructed by using http-header fields, to access
   * otherwise lost information, e.g. host and scheme.
   *
   * To reconstruct the scheme, first 'X-Forwarded-Proto' is checked, and then
   * falling back to server type.
   *
   * To reconstruct the host, fisrt 'X-Forwarded-Host' is checked, then 'Host'
   * and finally calling back to server.
   */
  Uri get requestedUri => _req.requestedUri;
  
  /**
   * The URI for the request (read-only).
   *
   * This provides access to the
   * path, query string, and fragment identifier for the request.
   */
  Uri get uri => _req.uri;
}

