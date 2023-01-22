import UIKit

struct UserData {
    var id: String = ""
    var email: String = ""
}

protocol DataBase {
    func create(_ values: Any)
    func delete(_ query: Any)
    func update(_ query: Any)
    func get() -> Any?
}

class MongoDBInstance: DataBase {
    func create(_ values: Any) {}
    func delete(_ query: Any) {}
    func update(_ query: Any) {}
    func get() -> Any? {
        return nil
    }
}
class SqlDBInstance: DataBase {
    func create(_ values: Any) {}
    func delete(_ query: Any) {}
    func update(_ query: Any) {}
    func get() -> Any? {
        return nil
    }
}


class User {
    let db: DataBase
    init(datebase: DataBase) {
        self.db = datebase
    }
    
    func getUser() {
        print(db.get())
    }
    
    func deleteUser() {
        let user = UserData(id: "1", email: "test@mail.com")
        print(db.create(user))
    }
}
