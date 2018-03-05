import UIKit

class SecondViewController: UIViewController {
    
    var login: String!

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(_ button: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)!"
    }
}
