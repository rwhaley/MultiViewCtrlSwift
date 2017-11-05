import UIKit

class ViewController1: UIViewController, ViewController2Delegate {
    
    @IBOutlet weak var headerTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ctrl = segue.destination as? ViewController2 {
            ctrl.passedHeaderStr = headerTxtFld.text
            ctrl.delegate = self
        }
    }
    
    //MARK: - delgate methods
    
    func headerChanged(str: String?) {
        headerTxtFld.text = str
    }

}

