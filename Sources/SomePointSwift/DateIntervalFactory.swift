import Foundation

public extension DateInterval {
    static var tomorrow: Self {
        DateIntervalFactory().tomorrow()
    }
}

class DateIntervalFactory {
    func tomorrow() -> DateInterval {
        DateInterval(
            start: 1.day.hence.startOfDay(),
            end: 1.day.hence.endOfDay()
        )
    }
    
    func thisMorning() -> DateInterval {
        let start = SomePointSwiftSettings.morningStartHour
        let end = SomePointSwiftSettings.morningEndHour
        
        return DateInterval(
            start: Date.now.atTime(h: start, m: 0, s: 0),
            end: Date.now.atTime(h: end, m: 0, s: 0)
        )
    }
    
    func thisAfternoon() -> DateInterval {
        let start = SomePointSwiftSettings.afternoonStartHour
        let end = SomePointSwiftSettings.afternoonEndHour
        
        return DateInterval(
            start: Date.now.atTime(h: start, m: 0, s: 0),
            end: Date.now.atTime(h: end, m: 0, s: 0)
        )
    }
    
    func thisEvening() -> DateInterval {
        let start = SomePointSwiftSettings.eveningStartHour
        let end = SomePointSwiftSettings.eveningEndHour
        
        return DateInterval(
            start: Date.now.atTime(h: start, m: 0, s: 0),
            end: Date.now.atTime(h: end, m: 0, s: 0)
        )
    }
}
