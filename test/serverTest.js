var chai = require('chai')
  , chaiHttp = require('chai-http');

chai.use(chaiHttp);
var expect = chai.expect;

var assert = require('assert');
describe('Array', function() {
  describe('#indexOf()', function() {
    it('should return -1 when the value is not present', function() {
      assert.equal(-1, [1,2,3].indexOf(4));
    });
  });
});

describe('http', function(){
  it('get / (testing GET request)', function(done) { // <= Pass in done callback
    chai.request('http://localhost:4000')
    .get('/')
    .end(function(err, res) {
      expect(err).to.be.null;
      expect(res).to.have.status(200);
      done();                               // <= Call done to signal callback end
    });
  }) ;
});
