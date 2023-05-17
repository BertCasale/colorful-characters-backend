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
    const newCharacter = await db.one("INSERT INTO characters (name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) RETURNING *", [name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game]);
    return newCharacter;
  } catch (e) {
    return e;
  }
}

const updateCharacter = async (id, character) => {
  const {name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game} = character;
  try {
    const updatedCharacter = db.one("UPDATE characters SET name=$1, image=$2, description=$3, protagonist=$4, playable=$5, lgbt=$6, lgbt_type=$7, poc=$8, poc_type=$9, game=$10 WHERE id=$11 RETURNING *",[name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, game, id]);
    return updatedCharacter;
  } catch (e) {
    return e;
  }
}

const deleteCharacter = async (id) => {
  try {
    const deletedCharacter = await db.one("DELETE FROM characters WHERE id=$1 RETURNING *", id);
    return deletedCharacter;
  } catch (e) {
    return e;
  }
}

module.exports = {
  getAllCharacters,
  getOneCharacter,
  addCharacter,
  updateCharacter,
  deleteCharacter
}