//
//  ThirdViewController.swift
//  NextVC
//
//  Created by Dowon Kim on 20/08/2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = someString
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
