/* eslint-disable no-undef */
"use strict";

const app = require("../src/app");

describe("App", () => {
  it('GET / responds with 200 containing "Success"', () => {
    return supertest(app)
      .get("/")
      .expect(200, "Success");
  });
});
