//
//  ViewController.swift
//  NextVC
//
//  Created by Dowon Kim on 19/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 1) Only Code connecting to next VC
    @IBAction func onlyCodeButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.someString = "Hello there!"
        firstVC.modalPresentationStyle = .fullScreen
        self.present(firstVC, animated: true, completion: nil)
    }
    

}

