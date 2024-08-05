const express = require('express')
const cors = require('cors')
const app = express()
const herbsController = require('./controllers/herbsController')


app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
    res.send(`Welcome to the #1 Herbology Hub Worldwide`)
})

app.use('/herbs', herbsController)

app.get('*', (req, res) => {
    res.status(404).send(`Internal Server Error`)
})


module.exports = app