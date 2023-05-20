const express = require("express");
const app = express();
const cors = require("cors");
const characterController = require("./controllers/charactersController.js");
const gamesController = require("./controllers/gamesController.js");

app.use(express.json());
app.use(cors());

app.use("/games", gamesController);
app.use("/characters", characterController);

app.get("/", (req, res) => {
  res.status(200).send("Welcome to Colorful Characters");
});

app.get("*", (req, res) => {
  res.status(404).send("Page cannot be found")
})

module.exports = app;