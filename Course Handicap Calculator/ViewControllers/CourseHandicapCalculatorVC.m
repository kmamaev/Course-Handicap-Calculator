#import "CourseHandicapCalculatorVC.h"
#import "LabeledTextFieldView.h"
#import "CourseHandicapCalculator.h"


@interface CourseHandicapCalculatorVC ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *transparentViews;

@property (strong, nonatomic) IBOutlet UIView *outputContainer;

@property (strong, nonatomic) IBOutlet LabeledTextFieldView *handicapIndexLabeledTextField;
@property (strong, nonatomic) IBOutlet LabeledTextFieldView *courseSlopeLabeledTextField;
@property (strong, nonatomic) IBOutlet UIButton *calculateButton;

@property (strong, nonatomic) IBOutlet UILabel *yourCourseHandicapLabel;
@property (strong, nonatomic) IBOutlet UILabel *courseHandicapResultLabel;

@end


@implementation CourseHandicapCalculatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureViews];
}

- (void)configureViews {
    [self configureTransparentViews];
    [self hideOutputContainer];
    
    [self prepareLocalization];
}

- (void)configureTransparentViews {
    for (UIView *view in self.transparentViews) {
        view.backgroundColor = [UIColor clearColor];
    }
}

- (void)hideOutputContainer {
    self.outputContainer.hidden = YES;
}

- (void)prepareLocalization {
    self.handicapIndexLabeledTextField.label.text = NSLocalizedString(@"Calculator.Label.HandicapIndex", nil);
    self.courseSlopeLabeledTextField.label.text = NSLocalizedString(@"Calculator.Label.CourseSlope", nil);
    
    self.yourCourseHandicapLabel.text = NSLocalizedString(@"Calculator.Label.YourCouseHandicap", nil);
    
    NSString *caltucateTitle = NSLocalizedString(@"Calculator.Button.Calculate", nil);
    [self.calculateButton setTitle:caltucateTitle forState:UIControlStateNormal];
}

- (IBAction)calculateButtonTapped:(UIButton *)sender {
    [self.view endEditing:YES];

    NSNumber *handicapIndex = @([self.handicapIndexLabeledTextField.textField.text doubleValue]);
    NSNumber *courseSlope = @([self.courseSlopeLabeledTextField.textField.text doubleValue]);
    
    NSInteger courseHandicap = [CourseHandicapCalculator courseHandicapWithHandicapIndex:handicapIndex courseSlope:courseSlope];
    
    self.outputContainer.hidden = NO;
    self.courseHandicapResultLabel.text = @(courseHandicap).stringValue;
}

@end
