import Foundation

public extension DateInterval {
    static func maybe(start: Date?, duration: TimeInterval?) -> DateInterval? {
        switch (start != nil, duration != nil) {
        case (true, true): return DateInterval(start: start!, duration: duration!)
        case (true, _): return DateInterval(start: start!, duration: .zero)
        case (_, true): return nil
        case (false, false): return nil
        }
    }
    
    static func maybe(start: Date?, end: Date?) -> DateInterval? {
        switch (start != nil, end != nil) {
        case (true, true): {
            guard end! >= start! else {
                return DateInterval(start: start!, duration: .zero)
            }
            return DateInterval(start: start!, end: end!)
        }()
        case (true, _): DateInterval(start: start!, duration: .zero)
        case (_, true): DateInterval(start: end!, duration: .zero)
        case (false, false): nil
        }
    }
}
