"use strict";

const express = require("express");
const logger = require("../logger");
const InfoService = require("./info-service");

const infoRouter = express.Router();

infoRouter
  .route("/:name")
  .all(whichCharacter)
  .get((req, res, next) => {
    InfoService.getAllGuides(req.app.get("db"), res.character_id)
      .then(guides => {
        res.json(guides);
      })
      .catch(next);
  });

async function whichCharacter(req, res, next) {
  try {
    console.log(req.params);

    const character = await InfoService.whosGuides(
      req.app.get("db"),
      req.params.name
    );

    if (!character)
      return res.status(404).json({
        error: "Character not found"
      });

    res.character_id = character.id;
    next();
  } catch (error) {
    next(error);
  }
}
module.exports = infoRouter;
