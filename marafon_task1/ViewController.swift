
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSquare()
    }
    
    func configureSquare() {
        let square = UIView(frame: .zero)
        view.addSubview(square)
        
        square.translatesAutoresizingMaskIntoConstraints = false
        
        square.widthAnchor
            .constraint(equalToConstant: 100)
            .isActive = true
        square.heightAnchor
            .constraint(equalToConstant: 100)
            .isActive = true
        
        square.leadingAnchor
            .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100)
            .isActive = true
        square.centerYAnchor
            .constraint(equalTo: view.centerYAnchor)
            .isActive = true
        
        square.setNeedsLayout()
        square.layoutIfNeeded()
        
        square.layer.shadowRadius = 6
        square.layer.shadowOpacity = 0.3
        square.layer.shadowOffset = CGSize(width: 0, height: 8)
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        gradientLayer.frame = square.bounds
        gradientLayer.cornerRadius = 10
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.5)
        
        square.layer.addSublayer(gradientLayer)
    }
}
