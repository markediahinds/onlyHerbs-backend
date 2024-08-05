// biosystem.name,
// biosystem.description,
// biosystem.functionality,
// biosystem.primaryOrgans,
// biosystem.associatedDiseases, 
// biosystem.element, 
// biosystem.chakra,
// biosystem.has_regenerative_capacity,
// biosystem.averageRecoveryTime 

const checkName = (req, res, next) => {
    if (req.body.name) {
      return next()
    } else {
      res.status(400).json({ error: `Name is required` })
    }
  }

const checkBoolean = (req, res, next) => {
    const { is_favorite } = req.body
    if (
      is_favorite == "true" ||
      is_favorite == "false" ||
      is_favorite == undefined ||
      typeof is_favorite == "boolean"
    ) {
      next()
    } else {
      res.status(400).json({ error: `is_favorite must be a boolean value` })
    }
  }


module.exports = { checkName, checkBoolean }