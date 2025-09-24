const http = require("http");
const port = 3000;

http.createServer((req, res) => {
  res.end("Hello from TeamCity CI/CD pipeline!");
}).listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
