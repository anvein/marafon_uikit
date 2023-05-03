
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMyView()
    }
    
    func buildMyView() {
        
        let square = UIView()
        square.backgroundColor = UIColor(red: 153 / 255, green: 153 / 255, blue: 255 / 255, alpha: 1)
        
        square.layer.cornerRadius = 10
        
        square.layer.shadowRadius = 6
        square.layer.shadowOpacity = 0.3
        square.layer.shadowOffset = CGSize(width: 0, height: 8)
        
        square.translatesAutoresizingMaskIntoConstraints = false
//        square.t
        
//        myView.addConstraint(NSLayoutConstraint())
        
        view.addSubview(square)
    }


}

