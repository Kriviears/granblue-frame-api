'use strict';

const express = require('express');
const uuid = require('uuid/v4');
const logger = require('../logger');
const { notes } = require('../data');

const notesRouter = express.Router();
const bodyParser = express.json();

notesRouter
  .route('/notes')
  .get((req, res)=>{
    res.json(notes);
  })
  .post(bodyParser, (req, res)=>{
    const { charAs, charVs, advice } = req.body;
    
    if(!charAs){
      const charAs = 'general';
    }

    if(!charVs){
      const charVs = 'general';
    }

    if(!advice){
      logger.error('Advice is required');
      return res
        .status(400)
        .send('Invalid data');
    }

    const id = uuid();

    const note = {
      id, charAs, charVs, advice
    };

    notes.push(note);

    logger.info(`Note with id ${id} created`);
    res.status(201).location(`http://localhost:8000/notes/${id}`).json({id});
  });

notesRouter
  .route('/notes/:id')
  .get((req, res)=>{
    const { id } = req.params;
    const note = notes.find(n=> n.id == id);

    if(!note){
      logger.error(`Note with id ${id} not found`);
      res.status(404).send('Note not found');
    }

    res.json(note);
  })
  .delete((req, res)=>{
    const { id } = req.params;

    const noIndex = notes.findIndex(n => n.id == id);

    if(noIndex === -1){
      logger.error(`Note with ${id} not found`);
      return res.status(404).send('Not found');
    }

    notes.splice(noIndex, 1);

    logger.info(`Note with id ${id} deleted`);
    res.status(204).end();
  });

module.exports = notesRouter;