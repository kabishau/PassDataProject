import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func sendPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DetailSegue", sender: nil)
    }
    
    // passing data to second view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? SecondViewController else { return }
        destinationViewController.login = loginTextField.text
    }
    
    // removing keyboard when user end editing text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

