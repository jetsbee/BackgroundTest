import UIKit

class ViewController: UIViewController {

    let labelView: UILabel = {
        let labelView = UILabel()
        labelView.text = "Hello, world!"
        labelView.textAlignment = .center
        
        return labelView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }
    
    fileprivate func setupViews() {
        addSubviews()
        constrainSubviews()
    }
    
    fileprivate func addSubviews() {
        view.addSubview(labelView)
    }
    
    fileprivate func constrainSubviews() {
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        labelView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }


}

