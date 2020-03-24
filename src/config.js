/* eslint-disable strict */

module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || "development",
  DB_URL:
    process.env.DATABASE_URL ||
    "postgresql://PersonalProj:ATLFGC1234@localhost/granblue-reactable",
  JWT_SECRET: process.env.JWT_SECRET || "secret-secure",
  JWT_EXPIRY: process.env.JWT_EXPIRY || "20s",
  DATABASE_URL:
    process.env.DATABASE_URL ||
    "postgresql://PersonalProj:ATLFGC1234@localhost/granblue-reactable"
};
