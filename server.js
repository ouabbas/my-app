const express = require("express");

const app = express();

app.get("/", (req, res) =>
  res.status(200).json({ result: `--PORT: ${process.env.PORT}--` })
);

app.listen(process.env.PORT || 3000, () => console.log("RUNNING"));
