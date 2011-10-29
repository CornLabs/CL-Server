var root = process.argv[2] ? process.argv[2] : process.cwd() + "/public",
	port = process.argv[3] ? process.argv[3] : 80;

var nstatic = require