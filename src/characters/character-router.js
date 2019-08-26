'use strict';

const express = require('express');
const logger = require('../logger');
const CharacterService = require('./character-service');

const characterRouter = express.Router();


characterRouter
  .route('/')
  .get((req, res, next)=>{
    CharacterService.getAllCharacters(req.app.get('db'))
      .then(characters=>{
        res.json(characters);
      })
      .catch(next);
  });

characterRouter
  .route('/:name')
  .get((req, res)=>{
    const { name } = req.params;
    CharacterService.getByName(req.app.get('db'), name)
      .then(character =>{
        if(!character){
          logger.error(`Character with name ${name} not found`);
          res.status(404).send('Character not found');
        }
        res.json(character);
      });
  });

characterRouter.route('/:name/notes')
  .all(getCharacterId)
  .get((req, res, next)=>{
    CharacterService.getNotesForCharacter(req.app.get('db'), res.character_id)
      .then(notes =>{
        res.json(notes.map(CharacterService.serializeCharacterNote));
      })
      .catch(next);
  });


async function getCharacterId(req, res, next){
  try {
    const character = await CharacterService.getByName(req.app.get('db'), req.params.name);

    if(!character)
      return res.status(404).json({
        error: 'Character doesn\'t exist'
      });

    res.character_id = character.id;
    next();
  } catch(error){
    next(error);
  }
}
module.exports = characterRouter;