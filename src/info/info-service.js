"use strict";
const InfoService = {
  getAllGuides(db, id) {
    return db("guides")
      .select("*")
      .where("character_id", id);
  },

  whosGuides(db, name) {
    return db("character AS char")
      .select("char.id")
      .where("char.name", name)
      .first();
  }
};

module.exports = InfoService;
