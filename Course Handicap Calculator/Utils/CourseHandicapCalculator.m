#import "CourseHandicapCalculator.h"


@implementation CourseHandicapCalculator

+ (NSInteger)courseHandicapWithHandicapIndex:(NSNumber *)handicapIndex courseSlope:(NSNumber *)courseSlope {
    double courseHandicapWithoutRound = handicapIndex.doubleValue * courseSlope.doubleValue / 113;
    
    NSInteger courseHandicap = lround(courseHandicapWithoutRound);
    
    return courseHandicap;
}

@end
