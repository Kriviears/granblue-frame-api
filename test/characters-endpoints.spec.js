/* eslint-disable quotes */
/* eslint-disable strict */
const knex = require("knex");
const app = require("../src/app");
const helpers = require("./test-helpers");

describe("Characters Endpoints", function() {
  let db;

  const testCharacters = helpers.makeCharsArray();

  // describe('Getting Characters', () =>{
  //     beforeEach(`insert characters`, () =>

  //     )
  // })

  before("make knex instance", () => {
    db = knex({
      client: "pg",
      connection: process.env.TEST_DB_URL
    });
    app.set("db", db);
  });

  after("disconnect from db", () => db.destroy());

  // before('cleanup', () => helpers.cleanTables(db));

  // afterEach("cleanup", () => helpers.cleanTables(db));

  describe("Character get all end point", () => {
    // beforeEach(`insert characters`, () =>
    //   helpers.seedCharactersTable(db, testCharacters)
    // );

    it(`GET /api/characters responds with 200 containing all the characters`, () => {
      const characters = testCharacters;
      return supertest(app)
        .get("/api/characters")
        .expect(200, characters);
    });

    it(`Gets character whose name matches what is in the route`, () => {
      const correctName = testCharacters[0].name;
      const character = testCharacters.find(char => char.name === correctName);
      return supertest(app)
        .get(`/api/characters/${correctName}`)
        .expect(200, character);
    });
  });
});
