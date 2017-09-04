var chai = require('chai')
  , chaiHttp = require('chai-http');

chai.use(chaiHttp);
var expect = chai.expect;

describe('http', function(){
  it('makes a get request on route set', function(done) {
    chai.request('http://localhost:4000')
    .get('/set')
    .end(function(err, res) {
      expect(err).to.be.null;
      expect(res).to.have.status(200);
      done();
    });
  }) ;

  it("handles query parameters", function(done){
    chai.request('http://localhost:4000')
    .get('/set')
    .query({somekey: 'somevalue'})
    .end(function(err, res){
      expect(err).to.be.null;
      expect(res).to.have.status(200);
      done();
    });
  });

  it('has a query parameter with given key', function(done){
    chai.request('http://localhost:4000')
    .get('/set')
    .query({somekey: 'somevalue'})

    chai.request('http://localhost:4000')
    .get('/get')
    .query({key: 'somekey'})
    .end(function(err, res){
      expect(err).to.be.null;
      expect(res).to.have.status(200);
      expect(res.text).to.equal('somevalue');
      done();
    });
  });
});
