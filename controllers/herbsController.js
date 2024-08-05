express = require('express')
const herbs = express.Router()
const { getAllHerbs, getSingleHerb, deleteHerb, createHerb, updateHerb } = require('../queries/herbs')

herbs.get('/', async (req, res) => {
    const allHerbs = await getAllHerbs()
    console.log(allHerbs)
    if (allHerbs[0]) {
        res.status(200).json(allHerbs)
    } else {
        res.status(404).json({ error: `Oops! Hub Not Found`})
    }
})

herbs.get('/:id', async (req, res) => {
    const { id } = req.params
    const singleHerb = await getSingleHerb(id)
    if (singleHerb.id) {
        res.status(200).json(singleHerb)
    } else {
        res.status(404).json({ error: `Oops! Herb Not Found`})
    }
})

herbs.delete('/:id', async (req, res) => {``
    const { id } = req.params
    const deletedHerb = await deleteHerb(id)
    if (deletedHerb.id) {
        res.status(200).json({ message: `Successfully Removed Herb`})
    } else {
        res.status(404).json({ error: `Oops! Herb Not Found`})
    }
})

herbs.post('/', async (req, res) => {
    const newHerb = await createHerb(req.body)
    if (newHerb) {
        res.status(200).json(newHerb)
    } else {
        res.status(404).json({ error: `Oops! Herb Not Posted`})
    }
})

herbs.put('/:id', async (req, res) => {
    const { id } = req.params
    const updatedHerb = await updateHerb(id, req.body)
    if (updatedHerb.id) {
        res.status(200).json(updatedHerb)
    } else {
        res.status(404).json({ error: `Oops! Herb Not Found`})
    }
})

// const getHerbsWithSystem = async (biosystem) => {
    
// }

module.exports = herbs