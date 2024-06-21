const express = require('express');
const User = require('../models/user');
const bcryptjs = require('bcryptjs');

const authRouter = express.Router();

authRouter.post('/api/signup', async (req, res) =>{
    try {
        const {name, email, password} = req.body;
        const existingUser = await User.findOne({email});
        if(existingUser) {
            return res.status(400).json({msg: "User with email already exists"});
        }

        const hashPassword = await bcryptjs.hash(password, 8);
        
        let user = new User({
            email,
            password: hashPassword,
            name,
        })
    
        user = await user.save();
        res.json(user);
    } catch(err) {
        res.status(500).json({msg: err.message});
    }
})

module.exports = authRouter;