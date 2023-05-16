const express = require("express");
const app = express();
const cors = require("cors");

app.use(express.json());
app.use(cors());



app.get("/", (req, res) => {
  res.status(200).send("Welcome to Colorful Characters");
});

app.get("*", (req, res) => {
  res.status(404).send("Page cannot be found")
})

module.exports = app;