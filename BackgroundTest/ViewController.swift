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
    
    func setupViews() {
        setupLabelTap()
        addSubviews()
        constrainSubviews()
    }
    
    func addSubviews() {
        view.addSubview(labelView)
    }
    
    func constrainSubviews() {
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        labelView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

    func setupLabelTap() {
        labelView.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
        labelView.addGestureRecognizer(guestureRecognizer)
    }
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer) {
        if (RandomBackground.isFire) {
            RandomBackground.stop()
        } else {
            RandomBackground.change(self.view)
        }
    }
}

