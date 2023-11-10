 import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onOK(_ sender: Any) {
        if(textLabel.text!.count > 0){
            nameLabel.text = "こんにちは" + textLabel.text! + "さん"
        }
        
    }
}

