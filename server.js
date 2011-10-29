var root = process.argv[2] ? process.argv[2] : process.cwd(),
	port = process.argv[3] ? process.argv[3] : 80;

var nstatic = require("node-static"),
	ss = new nstatic.Server(root);
	
var http = require("http").createServer(function(req, res){
	req.on("end", function()	{
		ss.serve(req, res);
	})
	console.log("Served : " + req.url + " to : " + req.client.remoteAddress);
}).listen(port);

console.log("Started test server!"); 
console.log("Document root : \033[1;31m" + root + "\033[0m");
console.log("Port : \033[0;34m" + port + "\033[0m")
