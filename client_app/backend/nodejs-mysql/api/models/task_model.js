const database = require('../database')

// Here, we are implementing the class with Singleton design pattern
//  Singleton is a design pattern where we create only a single instance (or object) from a class

class TaskModel {

    constructor() {
        if (this.instance) return this.instance  // This is the key idea of implementing singleton. Return the same instance (i.e. the one that has already been created before)
        // We only proceedd to the following lines only if no instance has been created from this class
        TaskModel.instance = this
    }

    get() {
        return database.query('SELECT * FROM task')
    }

    async getById(id) {
        const rows = await database.query('SELECT * FROM task WHERE id = ?', [id])
        return rows
    }

    create(task) {
        console.log(task)
        return database.query('INSERT INTO task (text, user) VALUES (?, ?)', [task.text, task.user])
    }

    delete(id) {
        return database.query('DELETE FROM task WHERE id = ? ', [id])
    }

    update(id, task) {
        const fields = []
        const params = []

        for (const attribute in task) {
            fields.push('?? = ?')
            params.push(attribute, task[attribute])
        }

        const stmt = `UPDATE task SET ${fields.join(', ')} WHERE id = ?`
        return database.query(stmt, [...params, parseInt(id)])
    }
}

module.exports = new TaskModel