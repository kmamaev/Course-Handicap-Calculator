import UIKit


class LabeledTextFieldView: UIView {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.prepareContentView()
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.prepareContentView()
    }

    private func prepareContentView() {
        let nib = UINib.init(nibName:"LabeledTextFieldView", bundle:nil)
        let contentView = nib.instantiate(withOwner:self, options:nil).first as! UIView
        contentView.frame = self.bounds
        contentView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        self.addSubview(contentView)
    }

}
