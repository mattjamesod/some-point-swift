import Foundation

enum SomeTime {
    case thisMorning
    case thisAfternoon
    case thisEvening
    case inTheComingDays(Int)
}

public extension DateInterval {
    func descriptionFromTemplate(_ dateTemplate: String) -> String {
        let formatter = DateIntervalFormatter()
        formatter.dateTemplate = dateTemplate
        
        return formatter.string(from: self) ?? "Some Time"
    }
}
