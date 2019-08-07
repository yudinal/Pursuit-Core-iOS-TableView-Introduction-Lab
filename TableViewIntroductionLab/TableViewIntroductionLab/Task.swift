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
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en")
        dateFormatter.dateFormat = "MM-dd"
        return [
            Task(name: "Create project roadmap",
                 status: .inProgress,
                 dueDate: dateFormatter.date(from: "08-13")!),
            Task(name: "Source information session speakers",
                 status: .notStarted,
                 dueDate: dateFormatter.date(from: "09-22")!),
            Task(name: "Secure event funding",
                 status: .completed,
                 dueDate: dateFormatter.date(from: "09-28")!),
            Task(name: "Secure venue for keynote",
                 status: .completed,
                 dueDate: dateFormatter.date(from: "10-23")!),
            Task(name: "Identify event KPIs",
                 status: .inProgress,
                 dueDate: dateFormatter.date(from: "7-04")!),
            Task(name: "Create internal newsletter advertising event",
                 status: .notStarted,
                 dueDate: dateFormatter.date(from: "6-09")!),
            Task(name: "Submit food budget",
                 status: .completed,
                 dueDate: dateFormatter.date(from: "6-12")!),
            Task(name: "Create event logo",
                 status: .notStarted,
                 dueDate: dateFormatter.date(from: "5-02")!),
            Task(name: "Make companion iOS application for event",
                 status: .inProgress,
                 dueDate: dateFormatter.date(from: "11-14")!),
            Task(name: "Get celebrity speaker (Tim Cook?)",
                 status: .inProgress,
                 dueDate: dateFormatter.date(from: "8-16")!),
            Task(name: "Purchase event insurance",
                 status: .completed,
                 dueDate: dateFormatter.date(from: "5-19")!),
            Task(name: "Get event SWAG",
                 status: .completed,
                 dueDate: dateFormatter.date(from: "8-20")!),
        ]
    }
}
