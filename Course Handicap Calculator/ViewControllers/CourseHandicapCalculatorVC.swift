import UIKit


class CourseHandicapCalculatorVC: UIViewController {

    @IBOutlet var transparentViews: [UIView]!
    @IBOutlet var outputContainer: UIView!
    
    @IBOutlet var handicapIndexLabeledTextField: LabeledTextFieldView!
    @IBOutlet var courseSlopeLabeledTextField: LabeledTextFieldView!

    @IBOutlet var calculateButton: UIButton!

    @IBOutlet var yourCourseHandicapLabel: UILabel!
    @IBOutlet var courseHandicapResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureViews()
    }

    private func configureViews() {
        self.configureTransparentViews()
        self.hideOutputContainer()
        
        self.prepareLocalization()
    }

    private func configureTransparentViews() {
        for view in self.transparentViews {
            view.backgroundColor = UIColor.clear
        }
    }

    private func hideOutputContainer() {
        self.outputContainer.isHidden = true
    }
    
    private func prepareLocalization() {
        self.handicapIndexLabeledTextField.label.text = NSLocalizedString("Calculator.Label.HandicapIndex", comment:"");
        self.courseSlopeLabeledTextField.label.text = NSLocalizedString("Calculator.Label.CourseSlope", comment:"");
    
        self.yourCourseHandicapLabel.text = NSLocalizedString("Calculator.Label.YourCouseHandicap", comment:"");
    
        let caltucateTitle = NSLocalizedString("Calculator.Button.Calculate", comment:"");
        self.calculateButton.setTitle(caltucateTitle, for:.normal)
    }

    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        self.view.endEditing(true)
        
        let handicapIndex = Double(self.handicapIndexLabeledTextField.textField.text!)
        let courseSlope = Double(self.courseSlopeLabeledTextField.textField.text!)
        
        let courseHandicap = CourseHandicapCalculator.courseHandicapWithHandicapIndex(handicapIndex, courseSlope:courseSlope)
        
        self.outputContainer.isHidden = false
        self.courseHandicapResultLabel.text = String(courseHandicap)
    }

}
