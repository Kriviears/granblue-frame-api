/* eslint-disable quotes */
/* eslint-disable strict */
const knex = require("knex");
const app = require("../src/app");
const helpers = require("./test-helpers");

describe(`Moves Endpoints`, function() {
  let db;

  const testMoves = helpers.makeMovesArray();
  const testCharacters = helpers.makeCharsArray();

  before(`make knex instance`, () => {
    db = knex({
      client: "pg",
      connection: process.env.TEST_DB_URL
    });
    app.set("db", db);
  });

  after("disconnect from db", () => db.destroy());

  describe("Get all moves", () => {
    it(`GET /api/moves responds with 200 containing all moves of the specified character`, () => {
      const targetChar = testCharacters[0];
      const moves = testMoves.find(move => move.character_id == targetChar.id);

      return supertest(app)
        .get(`/api/moves/${targetChar}`)
        .expect(200, moves);
    });
  });
});
