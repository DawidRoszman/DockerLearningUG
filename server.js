const http = require("http");

const hostname = "0.0.0.0";

const port = 8080;

const server = http.createServer((req, res) => {
  const html = `
    <h1>Hello World!</h1>
  `;
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/html");
  res.end(html);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
