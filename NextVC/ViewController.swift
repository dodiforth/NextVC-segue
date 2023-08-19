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
    
    // 2) Create an instance of Storyboard connecting to next VC
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        secondVC.someString = "Bonjour!"
        //⛔️secondVC.mainLabel.text = "Bonjour!" <- This will cause an error because the instance of storyboard hasn't yet created.
        secondVC.modalPresentationStyle = .fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    

}

