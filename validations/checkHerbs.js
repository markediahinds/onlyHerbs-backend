// herb.name, 
// herb.imageURL, 
// herb.partsUsed,
// herb.family, 
// herb.genus, 
// herb.nutrients, 
// herb.activeCompounds, 
// herb.medicinalUses, 
// herb.precautions, 
// herb.potencyRating, 
// herb.chakra,
// herb.element, 
// herb.biosystem_id

const checkName = (req, res, next) => {
    if (req.body.name) {
      return next()
    } else {
      res.status(400).json({ error: `Name is required` })
    }
  }

const validateURL = (req, res, next) => {
    if (
      req.body.url.substring(0, 7) === 'http://' ||
      req.body.url.substring(0, 8) === 'https://'
    ) {
      return next()
    } else {
      res
        .status(400)
        .json({ error: `You forgot to start your url with http:// or https://` })
    }
  }

  module.exports = { checkName, validateURL }