import Foundation


class CourseHandicapCalculator {
    
    static func courseHandicapWithHandicapIndex(_ handicapIndex: Double?, courseSlope: Double?) -> Int {
        guard (handicapIndex != nil) && (courseSlope != nil) else {
            return 0
        }
    
        let courseHandicapWithoutRound = handicapIndex! * courseSlope! / 113
        
        let courseHandicap = lround(courseHandicapWithoutRound);
        return courseHandicap
    }
    
}
