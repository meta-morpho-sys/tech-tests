'use strict';

describe("Server", function(){
  var server;
  var http;

  beforeEach(function (){
    server = new Server();

  });

  describe("starts a server", function(){
    it("requires express framework", function(){
      
    });

    it("creates a server", function(){

    });
  });

  describe("server runs on port 4000", function(){
    it("listens for connections", function( {
      expect(http.listen).toEqual("Listening on port 4000");
    });
  });

});
