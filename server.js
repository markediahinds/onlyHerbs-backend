const app = require('./app.js')
const PORT = process.env.PORT
require('dotenv').config()

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`)
})