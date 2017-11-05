import UIKit

protocol ViewController2Delegate {
    func headerChanged(str:String?)
}

class ViewController2: UIViewController {
    
    @IBOutlet weak var headerLbl: UILabel!
    var passedHeaderStr: String?
    var delegate: ViewController2Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLbl.text = passedHeaderStr
    }
    
    @IBAction func toUpperCase(_ sender: Any) {
        headerLbl.text = headerLbl.text?.uppercased()
        delegate?.headerChanged(str: headerLbl.text)
    }
    
    @IBAction func toLowerCase(_ sender: Any) {
        headerLbl.text = headerLbl.text?.lowercased()
        delegate?.headerChanged(str: headerLbl.text)
    }
}


