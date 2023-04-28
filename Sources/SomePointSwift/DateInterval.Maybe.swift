import Foundation

public extension DateInterval {
    static func maybe(start: Date?, duration: TimeInterval?) -> DateInterval? {
        guard let start, let duration else { return nil }
        return DateInterval(start: start, duration: duration)
    }
    
    static func maybe(start: Date?, end: Date?) -> DateInterval? {
        guard let start, let end else { return nil }
        return DateInterval(start: start, end: end)
    }
}
