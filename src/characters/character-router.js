'use strict';

const express = require('express');
const uuid = require('uuid/v4');
const logger = require('../logger');
const { characters } = require('../data');

const characterRouter = express.Router();
const bodyParser = express.json();

characterRouter
  .route('/characters')
  .get((req, res)=>{
    res.json(characters);
  });

characterRouter
  .route('/characters/:name')
  .get((req, res)=>{
    const { name } = req.params;
    const character = characters.find(char => char.name == name);

    if(!character){
      logger.error(`Character with name ${name} not found`);
      res.status(404).send('Character not found');
    }

    res.json(character);
  });

module.exports = characterRouter;