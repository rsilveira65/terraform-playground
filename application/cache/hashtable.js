const HashMap = require('hashmap');


class Hashtable {
    constructor() {
        this.hashtable = new HashMap();
    }

	find(n) {
        return this.hashtable.get(String(n));
    }
		
    
    save(n, result) {
        return this.hashtable.set(n, String(result));
    }
}

module.exports = Hashtable;