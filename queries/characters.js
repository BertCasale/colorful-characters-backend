const db = require("../db/dbConfig.js");

const getAllCharacters = async () => {
  try {
    const allCharacters = await db.any("SELECT characters.*, games.name AS game FROM characters LEFT JOIN games ON characters.game_id=games.id ORDER BY games.name ASC");
    return allCharacters;
  } catch (e) {
    return e;
  }
}

const getAllGameCharacters = async (gameId) => {
  try {
    const allGameCharacters = await db.any("SELECT * FROM characters WHERE game_id=$1 ORDER BY name", gameId);
    return allGameCharacters;
  } catch (e) {
    return e;
  }
}

const getOneCharacter = async (id) => {
  try {
    const singleCharacter = await db.one("SELECT characters.*, games.name AS game FROM characters LEFT JOIN games ON characters.game_id=games.id WHERE characters.id=$1", id);
    return singleCharacter;
  } catch (e) {
    return e;
  }
}

const addCharacter = async (characterToAdd) => {
  const {name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game_id} = characterToAdd;
  try {
    const newCharacter = await db.one("INSERT INTO characters (name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type game_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING *", [name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game_id]);
    return newCharacter;
  } catch (e) {
    return e;
  }
}

const searchCharacters = async (searchTerm) => {
  try {
    const searchedCharacter = await db.any(
      "SELECT characters.*, games.name AS game FROM characters LEFT JOIN games ON characters.game_id=games.id WHERE characters.name ILIKE $1 OR characters.description ILIKE $1 OR lgbt_type ILIKE $1 OR poc_type ILIKE $1 OR disability_type ILIKE $1",
      searchTerm
    );
    return searchedCharacter;
  } catch (error) {
    return error;
  }
};

const updateCharacter = async (id, character) => {
  const {name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game_id} = character;
  try {
    const updatedCharacter = db.one("UPDATE characters SET name=$1, image=$2, description=$3, protagonist=$4, playable=$5, lgbt=$6, lgbt_type=$7, poc=$8, poc_type=$9, disability=$10, disability_type=$11, game_id=$12 WHERE id=$13 RETURNING *",[name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game_id, id]);
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
  getAllGameCharacters,
  getOneCharacter,
  addCharacter,
  updateCharacter,
  deleteCharacter,
  searchCharacters
}