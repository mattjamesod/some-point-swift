import Foundation

enum SomeTime {
    case thisMorning
    case thisAfternoon
    case thisEvening
    case inTheComingDays(Int)
}

extension DateInterval {
    func description(_ dateTemplate: String) -> String {
        let formatter = DateIntervalFormatter()
        formatter.dateTemplate = dateTemplate
        
        return formatter.string(from: self) ?? "Some Time"
    }
}
