const express = require('express');
const promMid = require('express-prometheus-middleware');
const Prime = require('./prime/prime');
const HashMap = require('./cache/hashtable');
const hashtable = new HashMap();

const app = express()
const port = 80

app.use(promMid({
    metricsPath: '/metrics',
    collectDefaultMetrics: true,
}));

app.get('/health', (_, res) => {
    const healthcheck = {
		uptime: process.uptime(),
		message: 'OK',
		timestamp: Date.now()
    };
    
	try {
		res.send(healthcheck);
	} catch (e) {
		healthcheck.message = e;
		res.status(503).send();
	}
});
  
app.get('/', (req, res) => {
    const cached = hashtable.find(String(req.query.n));
    
    //cache hit
    if (cached) {
        return res.send(String(cached))
    }

    const result = new Prime().calculate(req.query.n);

    hashtable.save(req.query.n, String(result));
    res.send(String(result))
});


app.listen(port, () => {});