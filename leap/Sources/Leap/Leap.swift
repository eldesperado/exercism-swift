//Solution goes in Sources
class Year {
    let calendarYear: Int
    var isLeapYear: Bool {
        return ((self.calendarYear % 400 == 0)
                || ((self.calendarYear % 4 == 0) && (self.calendarYear % 100 != 0)))
    }

    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
}