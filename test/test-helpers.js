/* eslint-disable strict */
function makeCharsArray() {
  return [
    {
      id: 1,
      name: "Haomaru",
      thumbnail:
        "https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Hoahmaru/thumbnail.png",
      banner: "Haomaru Banner"
    },
    {
      id: 2,
      name: "Nakoruru",
      thumbnail:
        "https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Nakoruru/thumbnail.png",
      banner: "Nakoruru Banner"
    },
    {
      id: 3,
      name: "Charlotte",
      thumbnail:
        "https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Charlotte/thumbnail.png",
      banner: "Charlotte Banner"
    }
  ];
}

function makeTableFixtures() {
  const testCharacters = makeCharsArray();
  return { testCharacters };
}

function cleanTables(db) {
  return db.transaction(trx =>
    trx
      .raw(
        `TRUNCATE
        characters
      `
      )
      .then(() =>
        Promise.all([
          trx.raw(`ATLER SEQUENCE characters_id_seq minvalue 0 START WITH 1`)
        ])
      )
  );
}

function seedCharactersTable(db, characters) {
  return db.transaction(async trx => {
    await trx.into("character").insert(characters);
    await trx.raw(`SELECT setval('characters_id_seq', ?)`, [
      characters[characters.length - 1].id
    ]);
  });
}

module.exports = {
  makeCharsArray,
  cleanTables,
  seedCharactersTable
};
