import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler {
  Handler get handler {
    final router = Router();

    router.get("/", (Request req) {
      return Response(200, body: "First Router");
    });

    router.get("/helloworld/<name>", (Request req, String name) {
      return Response.ok("Hello World $name");
    });

    router.get("/query", (Request req) {
      String? name = req.url.queryParameters["name"];
      return Response.ok("Query is: $name");
    });
    
    return router;
  }
}