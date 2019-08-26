/* eslint-disable strict */
const xss = require('xss');

const CharactersService = {
  getAllCharacters(db){
    return db('characters AS char')
      .select(
        'char.id',
        'char.name',
        'char.thumbnail',
        'char.banner'
      );
  },
  

  getByName(db, name){
    return  CharactersService.getAllCharacters(db)
      .where('char.name', name)
      .first();
  },
  getById(db, id){
    return CharactersService.getAllCharacters(db)
      .where('char.id', id)
      .first();
  },

  getNotesForCharacter(db, character_id){
    return db('notes AS note')
      .select(
        'note.id',
        'note.content',
        'note.character_id',
        'note.user_id',
      )
      .where('note.character_id', character_id);
  },

  serializeCharacterNote(note){

    return {
      id: note.id,
      character_id: note.character_id,
      content: xss(note.content),
      user_id: note.user_id
    };
  }
};

module.exports = CharactersService;