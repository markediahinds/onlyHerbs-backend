const express = require('express')
const herbs = express.Router({ mergeParams: true })
const { getSingleBioSystem } = require('../queries/biosystems')
const { getAllHerbs, getSingleHerb, deleteHerb, createHerb, updateHerb } = require('../queries/herbs')
const { checkName, validateURL } = require('../validations/checkHerbs')


herbs.get('/', async (req, res) => {
    const { biosystem_id } = req.params
    const allHerbs = await getAllHerbs(biosystem_id)
    const biosystem = await getSingleBioSystem(biosystem_id)

    if (biosystem.id) {
        res.status(200).json({ ...biosystem, allHerbs })
    } else {
        res.status(404).json({ error: `Oops! Hub of Herbs Not Found` })
    }
})


herbs.get('/:id', async (req, res) => {
    const { id, biosystem_id } = req.params
    const singleHerb = await getSingleHerb(id, biosystem_id)
    const biosystem = await getSingleBioSystem(biosystem_id)

    if (singleHerb.id) { // herb or error object being returned either way (.id helps to identify that bc only a herb will have an id) 
        res.status(200).json({ ...singleHerb, biosystem })
    } else {
        res.status(404).json({ error: `Oops! Herb Not Found` })
    }
})


herbs.delete('/:id', async (req, res) => {``
    const { id } = req.params
    const deletedHerb = await deleteHerb(id)
    if (deletedHerb.id) {
        res.status(200).json({ message: `Successfully Removed Herb` })
    } else {
        res.status(404).json({ error: `Oops! Herb Not Deleted` })
    }
})

herbs.post('/', checkName, validateURL, async (req, res) => {
    const { biosystem_id } = req.params
    const newHerb = await createHerb({ ...req.body, biosystem_id })
    if (newHerb) {
        res.status(200).json(newHerb)
    } else {
        res.status(404).json({ error: `Oops! Herb Not Posted` })
    }
})

herbs.put('/:id', checkName, validateURL, async (req, res) => {
    const { id, biosystem_id } = req.params
    const updatedHerb = await updateHerb({ ...req.body, id, biosystem_id })
    if (updatedHerb.id) {
        res.status(200).json(updatedHerb)
    } else {
        res.status(404).json({ error: `Oops! Herb Edits Not Posted` })
    }
})


module.exports = herbs