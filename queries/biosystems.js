const db = require('../db/dbConfig')


const getAllBioSystems = async () => {
    try {
        const allBioSystems = db.any("SELECT * FROM biosystems")
        return allBioSystems
    } catch (err) {
        return err
    }
}

const getSingleBioSystem = async (id) => {
    try {
        const singleBioSystem = db.one("SELECT * FROM biosystems WHERE id=$1", id)
        return singleBioSystem
    } catch (err) {
        return err
    }
}

const deleteBioSystem = async (id) => {
    try {
        const removeBioSystem = db.one("DELETE FROM biosystems WHERE id=$1 RETURNING *", id)
        return removeBioSystem
    } catch (err) {
        return err
    }
}

const createBioSystem = async (biosystem) => {
    try {
        const newBioSystem = db.one("INSERT INTO biosystems (name, description, functionality, primaryOrgans, associatedDiseases, element, chakra, has_regenerative_capacity, averageRecoveryTime) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *",
            [
              biosystem.name,
              biosystem.description,
              biosystem.functionality,
              biosystem.primaryOrgans,
              biosystem.associatedDiseases, 
              biosystem.element, 
              biosystem.chakra,
              biosystem.has_regenerative_capacity,
              biosystem.averageRecoveryTime 
            ]
        )
        return newBioSystem
    } catch (err) {
        return err
    }
}

const updateBioSystem = async (id, biosystem) => {
    try {
        const editBioSystem = db.one("UPDATE biosystems SET name=$1, description=$2, functionality=$3, primaryOrgans=$4, associatedDiseases=$5, element=$6, chakra=$7, has_regenerative_capacity=$8, averageRecoveryTime=$9) WHERE id=$10 RETURNING *",
            [
              biosystem.name,
              biosystem.description,
              biosystem.functionality,
              biosystem.primaryOrgans,
              biosystem.associatedDiseases, 
              biosystem.element, 
              biosystem.chakra,
              biosystem.has_regenerative_capacity,
              biosystem.averageRecoveryTime,
              id 
            ]
        )
        return editBioSystem
    } catch (err) {
        return err
    }
}


module.exports = {
    getAllBioSystems, 
    getSingleBioSystem, 
    deleteBioSystem, 
    createBioSystem, 
    updateBioSystem
}

// const getHerbsWithSystem = async (biosystem) => {
    
// }