import Foundation

public extension Int {
    var seconds: DateComponents { .init(second: self) }
    var second: DateComponents { self.seconds }
    
    var minutes: DateComponents { .init(minute: self) }
    var minute: DateComponents { self.minutes }
    
    var hours: DateComponents { .init(hour: self) }
    var hour: DateComponents { self.hours }
    
    var days: DateComponents { .init(day: self) }
    var day: DateComponents { self.days }
    
    var weeks: DateComponents { .init(day: self * 7) }
    var week: DateComponents { self.weeks }
    
    var months: DateComponents { .init(month: self) }
    var month: DateComponents { self.months }
    
    var years: DateComponents { .init(year: self) }
    var year: DateComponents { self.years }
    
}

public extension DateComponents {
    var hence: Date {
        guard let foundDate = Calendar.current.date(byAdding: self, to: Date()) else {
            fatalError()
        }
        
        return foundDate
    }
    
    var ago: Date {
        guard let foundDate = Calendar.current.date(byAdding: -self, to: Date()) else {
            fatalError()
        }
        
        return foundDate
    }
    
    static prefix func -(rhs: Self) -> DateComponents {
        .init(
            year: -rhs.year,
            month: -rhs.month,
            day: -rhs.day,
            hour: -rhs.hour,
            minute: -rhs.minute,
            second: -rhs.second
        )
    }
}

public extension Optional where Wrapped: Numeric {
    static prefix func -(rhs: Self) -> Wrapped? {
    switch rhs {
    case .some(let value):
        return value * -1
    case .none:
        return nil
        }
    }
}
