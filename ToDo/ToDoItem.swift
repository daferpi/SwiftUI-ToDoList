import Foundation

struct ToDoItem: Identifiable, Codable {
    var id = UUID()
    var title: String
    var important: Bool

    init(title: String, important: Bool) {
        self.title = title
        self.important = important
    }
}

class ToDoStorage: ObservableObject {
    @Published var toDoList = [ToDoItem]() {
        didSet {
            UserDefaults
                .standard
                .set(try? PropertyListEncoder().encode(toDoList),
                     forKey: "toDoList")
        }
    }

    init() {
        if let data = UserDefaults.standard.value(forKey: "toDoList") as? Data {
            if let userDefaultToDos = try? PropertyListDecoder().decode(Array<ToDoItem>.self, from: data) {
                toDoList = userDefaultToDos
            }
        }
    }
}
