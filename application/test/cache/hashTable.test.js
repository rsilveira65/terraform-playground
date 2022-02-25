'use strict';

const chai = require('chai');
const expect = chai.expect;
const HashTable = require('../../cache/hashtable');

describe('Testing HashTable class', () => {
	it('Should retrurn persisted cache', () => {
		const hashTable = new HashTable();
		hashTable.save('10', 55);
        expect(hashTable.find('10')).to.equal('55');
	});
});