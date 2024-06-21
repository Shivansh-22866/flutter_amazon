const express = require('express');
const mongoose = require('mongoose');
require('dotenv').config();

const app = express();
const authRouter = require('./routes/auth');


app.use(express.json())
app.use(authRouter)

const PORT = process.env.PORT;
const MONGO_URL = `${process.env.MONGO_URL}`

mongoose.connect(MONGO_URL).then(() => {
    console.log('Connected to MongoDB');
}).catch(e => {
    console.log('Error connecting to MongoDB');
    console.log(e);
})

app.get('/', (req, res) => {
    res.json({message: "This is the main route"})
})

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server listening on port ${PORT}`);
});