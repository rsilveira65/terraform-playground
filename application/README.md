## How to run it locally 

Install dependencies
```
$ npm install
```

Run the application
```
$ node main.js
```

Run tests
```
$ npm test
```

Access: [http://localhost?n=5](http://localhost?n=5) 

## How to run it using docker

Build application
```
docker build ./application -t rsilveira65/hearst_tha:1.1 
```

Run application
```
docker run rsilveira65/hearst_tha
```

Run tests
```
docker run -i rsilveira65/hearst_tha npm test
```