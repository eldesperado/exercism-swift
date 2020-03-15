import Foundation

class Gigasecond {
    fileprivate static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        return formatter
    }()
    
    let gigaSecondTime: TimeInterval = pow(10, 9)
    var description: String
    
    init?(from: String?) {
        guard let fromDate: String = from,
            let formattedFromDate = Gigasecond.dateFormatter.date(from: fromDate) else {
            return nil
        }
        
        let liveTime = Date(timeInterval: self.gigaSecondTime, since: formattedFromDate)
        self.description = Gigasecond.dateFormatter.string(from: liveTime)
    }
}
