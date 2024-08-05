const express = require('express')
const cors = require('cors')
const app = express()
const biosystemsController = require('./controllers/biosystemsController')


app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
    res.send(`Welcome to the #1 Herbology Hub Worldwide`)
})

app.use('/biosystems', biosystemsController)

app.get('*', (req, res) => {
    res.status(404).send(`Internal Server Error`)
})


module.exports = app