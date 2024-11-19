const app = require('./app.js')
require('dotenv').config()
const PORT = process.env.PORT

app.listen(PORT, () => {
    console.log(`Singing to me softly on PORT: ${PORT}`)
})