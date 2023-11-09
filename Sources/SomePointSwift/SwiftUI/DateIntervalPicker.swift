import Foundation
import SwiftUI

public struct DateIntervalPicker: View {
    @Binding var interval: DateInterval
    
    let titleKey: String
    
    public init(_ titleKey: String, interval: Binding<DateInterval>) {
        self.titleKey = titleKey
        self._interval = interval
    }
    
    public var body: some View {
        VStack {
            Text(titleKey)
            DatePicker("Start", selection: $interval.start)
            DatePicker("End", selection: $interval.end)
        }
    }
}
