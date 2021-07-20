const database = require('../database')

// Here, we are implementing the class with Singleton design pattern
//  Singleton is a design pattern where we create only a single instance (or object) from a class

class TodoModel {

    constructor() {
        if (this.instance) return this.instance  // This is the key idea of implementing singleton. Return the same instance (i.e. the one that has already been created before)
        // We only proceedd to the following lines only if no instance has been created from this class
        TodoModel.instance = this
    }

    get() {
        return database.query('SELECT * FROM user')
    }

    async getById(id) {
        const rows = await database.query('SELECT * FROM user WHERE id = ?', [id])
        return rows
    }

    async getusers(id) {
        const rows = await database.query('SELECT * FROM user WHERE user = ?', [id])
        return rows
    }

    create(todo) {
        return database.query('INSERT INTO user (text, user) VALUES (?, ?)', [todo.text, todo.user])
    }

    delete(id) {
        return database.query('DELETE FROM user WHERE id = ? ', [id])
    }

    update(id, todo) {
        const fields = []
        const params = []

        for (const attribute in todo) {
            fields.push('?? = ?')
            params.push(attribute, todo[attribute])
        }

        const stmt = `UPDATE user SET ${fields.join(', ')} WHERE id = ?`
        return database.query(stmt, [...params, parseInt(id)])
    }
}

module.exports = new TodoModel