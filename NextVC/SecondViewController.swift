//
//  SecondViewController.swift
//  NextVC
//
//  Created by Dowon Kim on 19/08/2023.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = someString
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
