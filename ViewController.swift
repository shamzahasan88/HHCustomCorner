
    import UIKit

    class ViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
            let button = UIButton(type: .system)
            button.setTitle("Tap Me", for: .normal)
            button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            view.addSubview(button)
            
        }
        
        @objc func buttonTapped() {
            print("Button tapped!")
        }
    }
    