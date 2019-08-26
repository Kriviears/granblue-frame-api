'use strict';
module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DB_URL: process.env.DB_URL || 'postgresql://PersonalProj:ATLFGC1234@localhost/tekken-reactable',
  JWT_SECRET: process.env.JWT_SECRET || 'personal-secret'
};