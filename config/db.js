
const Sequelize = require('sequelize')

const db = new Sequelize('manglar', 'root', '', {
    host: '127.0.0.1', //127.0.0.1
    dialect: 'mysql',
    define: {
        timestamps: false,
    }
})

module.exports = db