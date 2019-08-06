import Foundation

struct Task {
    enum Status {
        case notStarted
        case inProgress
        case completed
    }
    
    let name: String
    let status: Status
    let dueDate: Date
    
    static var allTasks: [Task] {
        return [

        ]
    }
}
