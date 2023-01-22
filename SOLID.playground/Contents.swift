import UIKit

struct User {
    let id: UUID
    let email: String
}

//class UserViewModel {
//    // Fetching user from the server and parsing data
//    public func fetchUser() {
//        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "testUrl")!)) { [weak self] data, response, error in
//            self?.handleData(data)
//        }
//    }
//
//    private func handleData(_ data: Data?) {}
//
//    private var users = [User]()
//    func getUser(_ id: UUID) -> User? {
//        return users.first { $0.id == id }
//    }
//
//    func createUser() {
//        // create user obj and save to db
//    }
//    func deleteUser() {
//        // delete user obj from db
//    }
//    func updateUser() {
//        // update user in db
//    }
//}

struct Query {}
protocol UserRequestHandlerProtocol {
    func fetchUser()
}
protocol DataBaseHandlerProtocol {
    func createUser()
    func deleteUser()
    func updateUser()
    func getUser(_ query: Query) -> User
}

class UserViewModel {
    private let userRequestHandler: UserRequestHandlerProtocol
    private let dbHandler: DataBaseHandlerProtocol

    init(userRequestHandler: UserRequestHandlerProtocol, dbHandler: DataBaseHandlerProtocol) {
        self.userRequestHandler = userRequestHandler
        self.dbHandler = dbHandler
    }

    // Delegates the task to userRequestHandler to process the request and fetchUser
    func fetchUser() {
        userRequestHandler.fetchUser()
    }
    
    // Delegates the task to dbHandler to get the user from the db
    func getUser(_ query: Query) -> User {
        return dbHandler.getUser(query)
    }
    
    func createUser() {
        dbHandler.createUser()
    }

    func deleteUser() {
        dbHandler.deleteUser()
    }

    func updateUser() {
        dbHandler.updateUser()
    }
}
