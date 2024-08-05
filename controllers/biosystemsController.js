const express = require('express')
const biosystems = express.Router()
const herbsController = require('./herbsController')
const { getAllBioSystems, getSingleBioSystem, deleteBioSystem, createBioSystem, updateBioSystem } = require('../queries/biosystems')
const { checkName, checkBoolean } = require('../validations/checkBiosystems')
biosystems.use('/:biosystem_id/herbs', herbsController)


biosystems.get('/', async (req, res) => {
    const allBioSystems = await getAllBioSystems()
    if (allBioSystems[0]) {
        res.status(200).json(allBioSystems)
    } else {
        res.status(404).json({ error: `Oops! BioSystems Not Found` })
    }
})

biosystems.get('/:id', async (req, res) => {
    const { id } = req.params
    const singleBioSystem = await getSingleBioSystem(id)
    if (singleBioSystem.id) {
        res.status(200).json(singleBioSystem)
    } else {
        res.status(404).json({ error: `Oops! BioSystem Not Found` })
    }
})

biosystems.delete('/:id', async (req, res) => {``
    const { id } = req.params
    const deletedBioSystem = await deleteBioSystem(id)
    if (deletedBioSystem.id) {
        res.status(200).json({ message: `Successfully Removed Herb` })
    } else {
        res.status(404).json({ error: `Oops! BioSystem Not Deleted` })
    }
})

biosystems.post('/', checkName, checkBoolean, async (req, res) => {
    const newBioSystem = await createBioSystem(req.body)
    if (newBioSystem) {
        res.status(200).json(newBioSystem)
    } else {
        res.status(404).json({ error: `Oops! BioSystem Not Posted` })
    }
})

biosystems.put('/:id', checkName, checkBoolean, async (req, res) => {
    const { id } = req.params
    const updatedBioSystem = await updateBioSystem(id, req.body)
    if (updatedBioSystem.id) {
        res.status(200).json(updatedBioSystem)
    } else {
        res.status(404).json({ error: `Oops! BioSystem Edits Not Posted` })
    }
})


module.exports = biosystems