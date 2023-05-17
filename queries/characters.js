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

const addCharacter = async (characterToAdd) => {
  const {name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game} = characterToAdd;
  try {
    const newCharacter = await db.one("INSERT INTO characters (name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)", [name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game]);
    return newCharacter;
  } catch (e) {
    return e;
  }
}

module.exports = {
  getAllCharacters,
  getOneCharacter,
  addCharacter,
}