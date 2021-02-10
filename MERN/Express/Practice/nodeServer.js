// This is an example of a Node ONLY web server

const http = require("http");   // get the http lib to create a server
const fs = require("fs");       // file system access to read HTML files

 // create an instance of our server
const server = http.createServer(function(req, res) {
    console.log("Client requested URL: ", req.url);

    // this is how we do routing
    if (req.url === "/") {
        fs.readFile("index.html", "utf8", function (errors, contents) {
            res.writeHead(200, { "Content-Type": "text/html" }); // data about res
            res.write(contents); // res.body
            res.end(); // finished with res
        });
        // If req doesn't match the URLs above, send back a 404 msg
    } else {
        res.writeHead(404);
        res.end("File not found!"); // send err msg
    }
});

// tell server what port we should run on
const port = 6789;
server.listen(port);

// print to terminal window
console.log(`Runnong on localhost at port ${port}`);