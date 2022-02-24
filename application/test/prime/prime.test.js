'use strict';

const chai = require('chai');
const expect = chai.expect;
const Prime = require('../../prime/prime');

describe('Testing Prime class', () => {
	it('Should calculate prime numbers', () => {
		const prime = new Prime();

        expect(prime.calculate(97)).to.equal(true);
        expect(prime.calculate(1)).to.equal(false);
        expect(prime.calculate(2)).to.equal(true);
        expect(prime.calculate(29)).to.equal(true);
        expect(prime.calculate(96)).to.equal(false);
	});
});