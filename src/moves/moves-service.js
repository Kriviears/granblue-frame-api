/* eslint-disable strict */
const MovesService = {
  getAllMoves(db, id) {
    return db('moves')
      .select('*')
      .where('character_id', id);
  },

  whosMoves(db, name) {
    return db('characters AS char')
      .select('char.id')
      .where('char.name', name)
      .first();
  }
};

module.exports = MovesService;
