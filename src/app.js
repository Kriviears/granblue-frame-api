"use strict";

require("dotenv").config();
const express = require("express");
const morgan = require("morgan");
const cors = require("cors");
const helmet = require("helmet");
const { NODE_ENV } = require("./config");
const characterRouter = require("./characters/character-router");
const noteRouter = require("./notes/notes-router");
const movesRouter = require("./moves/moves-router");

const app = express();

const morganOption = NODE_ENV === "production" ? "tiny" : "common";

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());

app.use((error, req, res, next) => {
  let response;
  if (process.env.NODE_ENV === "production") {
    response = { error: { message: "server error" } };
  } else {
    response = { error };
  }
  res.status(500).json(response);
});

app.get("/", (req, res) => {
  res.send("Success");
});

app.use("/api/moves", movesRouter);
app.use("/api/characters", characterRouter);
app.use("/api/notes", noteRouter);
//app.use('/api/info', infoRouter);
//app.use('/api/users', usersRouter);

module.exports = app;
