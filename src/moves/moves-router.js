'use strict';

const express = require('express');
const logger = require('../logger');
const MovesService = require('./moves-service');

const movesRouter = express.Router();

movesRouter
  .route('/:name')
  .all(whichCharacter)
  .get((req, res, next) => {
    MovesService.getAllMoves(req.app.get('db'), res.character_id)
      .then(moves => {
        res.json(moves);
      })
      .catch(next);
  });

async function whichCharacter(req, res, next) {
  try {
    console.log(req.params);

    const character = await MovesService.whosMoves(
      req.app.get('db'),
      req.params.name
    );

    if (!character)
      return res.status(404).json({
        error: 'Character not found'
      });

    res.character_id = character.id;
    next();
  } catch (error) {
    next(error);
  }
}
module.exports = movesRouter;
