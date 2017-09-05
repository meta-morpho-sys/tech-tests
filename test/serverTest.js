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

  it('gets what it sets #1', function(done){
    chai.request('http://localhost:4000')
    .get('/set')
    .query({somekey: 'somevalue'}).end()

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

  it('gets what it sets #2', function(done){
    chai.request('http://localhost:4000')
    .get('/set')
    .query({name: 'Bob'}).end()

    chai.request('http://localhost:4000')
    .get('/get')
    .query({key: 'name'})
    .end(function(err, res){
      expect(err).to.be.null;
      expect(res).to.have.status(200);
      expect(res.text).to.equal('Bob');
      done();
    });
  });
});
