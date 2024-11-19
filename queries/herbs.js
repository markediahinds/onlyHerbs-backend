const db = require('../db/dbConfig')


// const getAllHerbs = async () => {
//     try {
//         const allHerbs = await db.any("SELECT * FROM herbs")        
//         return allHerbs
//     } catch (err) {
//         console.error(`Error fetching all herbs`, err)
//         return err
//     }
// }

const getAllHerbs = async (biosystem_id) => {
    try {
        const allHerbs = await db.any("SELECT * FROM herbs WHERE biosystem_id=$1", biosystem_id)        
        return allHerbs
    } catch (err) {
        return err
    }
}

const getSingleHerb = async (id, biosystem_id) => {
    try {
        const singleHerb = await db.one("SELECT * FROM herbs WHERE id=$1 AND biosystem_id=$2", 
            [id, biosystem_id]
        ) // injecting two values into the query
        return singleHerb
    } catch (err) {
        return err
    }
}

const deleteHerb = async (id) => {
    try {
        const deletedHerb = await db.one(
            "DELETE FROM herbs WHERE id=$1 RETURNING *", 
            id
        )
        return deletedHerb
    } catch (err) {
        return err
    }
}

const createHerb = async (herb) => {
    try {
        const newHerb = await db.one(
            "INSERT INTO herbs (name, imageURL, partsUsed, family, genus, nutrients, activeCompounds, medicinalUses, precautions, potencyRating, chakra, element, biosystem, addtlbiosystem, biosystem_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15) RETURNING *",
            [
              herb.name, 
              herb.imageURL, 
              herb.partsUsed,
              herb.family, 
              herb.genus, 
              herb.nutrients, 
              herb.activeCompounds, 
              herb.medicinalUses, 
              herb.precautions, 
              herb.potencyRating, 
              herb.chakra,
              herb.element,
              herb.biosystem,
              herb.addtlbiosystem,  
              herb.biosystem_id
            ]
        )
        return newHerb
    } catch (err) {
        return err
    }
}

const updateHerb = async (herb) => {
    try {
        const updatedHerb = await db.one(
            "UPDATE herbs SET name=$1, imageURL=$2, partsUsed=$3, family=$4, genus=$5, nutrients=$6, activeCompounds=$7, medicinalUses=$8, precautions=$9, potencyRating=$10, chakra=$11, element=$12, biosystem=$13, addtlbiosystem=$14, biosystem_id=$15 WHERE id=$14 RETURNING *",
            [
              herb.name, 
              herb.imageURL,
              herb.partsUsed, 
              herb.family, 
              herb.genus, 
              herb.nutrients,  
              herb.activeCompounds,
              herb.medicinalUses, 
              herb.precautions, 
              herb.potencyRating, 
              herb.chakra,
              herb.element,
              herb.biosystem,
              herb.addtlbiosystem,   
              herb.biosystem_id, 
              herb.id
            ]
        )
        return updatedHerb
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