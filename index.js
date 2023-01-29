const http = require('http')

const hostname = `0.0.0.0`
const port = 80

const server = http.createServer((req, res) => {
    res.statusCode = 200
    res.setHeader('Content-Type', 'text/plain')
    res.end('This is project X')
})

server.listen(port, hostname, ()=> {
    console.log(`This server is being run on docker on port: ${port}`);
})