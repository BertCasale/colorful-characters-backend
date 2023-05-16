const app = require("../app");
const db = require("../db/dbConfig.js");

const getAllCharacters = async () => {
  try {
    const allCharacters = await db.any("SELECT * FROM characters");
    return allCharacters;
  } catch (e) {
    return e;
  }
}

const getOneCharacter = async (id) => {
  try {
    const singleCharacter = await db.one("SELECT * FROM characters WHERE id=$1", id);
    return singleCharacter;
  } catch (e) {
    return e;
  }
}

module.exports = {
  getAllCharacters,
  getOneCharacter
}