const db = require('../db/dbConfig')

console.log(db)

const getAllHerbs = async () => {
    try {
        const allHerbs = await db.any("SELECT * FROM herbs")
        console.log(allHerbs)
        
        return allHerbs
    } catch (err) {
        console.error(`Error fetching all herbs`, err)
        return err
    }
}

const getSingleHerb = async (id) => {
    try {
        const singleHerb = await db.one("SELECT * FROM herbs WHERE id=$1", id)
        return singleHerb
    } catch (err) {
        return err
    }
}

const deleteHerb = async (id) => {
    try {
        const removeHerb = await db.one("DELETE FROM herbs WHERE id=$1 RETURNING *", id)
        return removeHerb
    } catch (err) {
        return err
    }
}

const createHerb = async (herb) => {
    try {
        const newHerb = await db.one("INSERT INTO herbs (name, imageURL, family, genus, nutrients, partsUsed, activeCompounds, medicinalUses, precautions, potencyRating, is_perennial, biosystem) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING *",
            [
              herb.name, 
              herb.imageURL, 
              herb.family, 
              herb.genus, 
              herb.nutrients, 
              herb.partsUsed, 
              herb.activeCompounds, 
              herb.medicinalUses, 
              herb.precautions, 
              herb.potencyRating, 
              herb.is_perennial, 
              herb.biosystem
            ]
        )
        return newHerb
    } catch (err) {
        return err
    }
}

const updateHerb = async (id, herb) => {
    try {
        const editHerb = await db.one("UPDATE herbs SET name=$1, imageURL=$2, family=$3, genus=$4, nutrients=$5, partsUsed=$6, activeCompounds=$7, medicinalUses=$8, precautions=$9, potencyRating=$10, is_perennial=$11, biosystem=$12 WHERE id=$13 RETURNING *",
            [
              herb.name, 
              herb.imageURL, 
              herb.family, 
              herb.genus, 
              herb.nutrients, 
              herb.partsUsed, 
              herb.activeCompounds,
              herb.medicinalUses, 
              herb.precautions, 
              herb.potencyRating, 
              herb.is_perennial, 
              herb.biosystem, 
              id
            ]
        )
        return editHerb
    } catch (err) {
        return err
    }
}


module.exports = {
    getAllHerbs,
    getSingleHerb,
    deleteHerb,
    createHerb,
    updateHerb
}