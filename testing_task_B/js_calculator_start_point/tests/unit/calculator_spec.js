var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  // Unit testing
  it("should be able to add a number", function(){
    calculator.add(4)
    assert.equal(4, calculator.runningTotal)
  })

  it("should be able to subtract a number", function(){
    calculator.subtract(3)
    assert.equal(-3, calculator.runningTotal)
  })

  it("should be able to multiply a number", function(){
    calculator.multiply(6)
    assert.equal(0, calculator.runningTotal)
  })

  it("should be able to divide a number", function(){
    calculator.multiply(7)
    assert.equal(0, calculator.runningTotal)
  })

  it("should be able to click on a number", function(){
    calculator.numberClick(6);
    calculator.numberClick(3);
    assert.equal(63, calculator.runningTotal)
  })

  it("should be able to click on an operator", function(){
    calculator.operatorClick("+");
    assert.equal(true, calculator.newTotal)
  })

  it("should be able to clear a click on an operator", function(){
    calculator.clearClick();
    assert.equal(0, calculator.runningTotal)
  })

  // Operations testing
  it("should be able to perform an addition", function(){
    calculator.numberClick(1)
    calculator.operatorClick("+")
    calculator.numberClick(4)
    calculator.operatorClick("=")
    assert.equal(5, calculator.runningTotal)
  })

  it("should be able to perform a subtraction", function(){
    calculator.numberClick(7)
    calculator.operatorClick("-")
    calculator.numberClick(4)
    calculator.operatorClick("=")
    assert.equal(3, calculator.runningTotal)
  })

  it("should be able to perform a multiplication", function(){
    calculator.numberClick(3)
    calculator.operatorClick("*")
    calculator.numberClick(5)
    calculator.operatorClick("=")
    assert.equal(15, calculator.runningTotal)
  })

  it("should be able to perform a division", function(){
    calculator.numberClick(21)
    calculator.operatorClick("/")
    calculator.numberClick(7)
    calculator.operatorClick("=")
    assert.equal(3, calculator.runningTotal)
  })

  it("should be able to concatenate multiple number button clicks", function(){
    calculator.numberClick(3)
    calculator.numberClick(4)
    calculator.numberClick(1)
    calculator.operatorClick("=")
    assert.equal(341, calculator.runningTotal)
  })

  it("should be able to chain multiple operations together", function(){
    calculator.numberClick(3)
    calculator.numberClick(4)
    calculator.operatorClick("+")
    calculator.numberClick(1)
    calculator.numberClick(2)
    calculator.operatorClick("/")
    calculator.numberClick(2)
    calculator.operatorClick("=")
    assert.equal(23, calculator.runningTotal)
  })

  it("should be able to clear the running total without affecting the calculation", function(){
    calculator.numberClick(3)
    calculator.numberClick(4)
    calculator.operatorClick("+")
    calculator.numberClick(1)
    calculator.numberClick(2)
    calculator.operatorClick("/")
    calculator.numberClick(2)
    calculator.operatorClick("+")
    calculator.numberClick(1)
    calculator.clearClick()
    calculator.operatorClick("=")
    assert.equal(23, calculator.runningTotal)
  })

  it("should not be possible to divide by 0", function(){
    calculator.numberClick(3)
    calculator.operatorClick("/")
    calculator.numberClick(0)
    assert.equal(0, calculator.runningTotal)
  })

});
