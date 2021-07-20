const tasksModel = require('../models/task_model')
const express = require('express')
bodyParser = require('body-parser').json()
const router = express.Router()


router.get('/', async (req, res, next) => {
    try {

        const result = await tasksModel.get()
        res.json(result)
    }
    catch (e) {
        console.log(e)
    }
})


router.get('/:id', async (req, res, next) => {
    try {
        const result = await tasksModel.getById(req.params.id)
        if (!result) return res.sendStatus(404)
        res.json(result)
    }
    catch (e) {
        console.log(e)
    }
})


router.post('/', bodyParser , async (req, res, next) => {
    try {
        const createResult = await tasksModel.create(req.body)
        if (!createResult.affectedRows) return res.sendStatus(409)

        const result = await tasksModel.getById(createResult.insertId)
        res.status(201).json(result)
    }
    catch (e) {
        console.log(e)
    }
})


router.delete('/:id', async (req, res, next) => {
    try {
        const result = await tasksModel.delete(req.params.id)
        if (!result.affectedRows) return res.sendStatus(404)
        res.sendStatus(200)
    }
    catch (e) {
        console.log(e)
    }
})


router.patch('/:id', async (req, res, next) => {
    try {
        const updateResult = await tasksModel.update(req.params.id, req.body)
        if (!updateResult.affectedRows) return res.sendStatus(404)

        const result = await tasksModel.getById(req.params.id)
        res.json(result)
    }
    catch (e) {
        console.log(e)
    }
})


module.exports = router