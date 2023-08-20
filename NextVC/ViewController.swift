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
    
    // 1) Only Code. Creating and connecting to next VC
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
    
    // 3) Connecting to next VC by Storyboard with Segue (VC to VC)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        // Surrounding with "if" conditinal can make this Segue as "Conditional"
        self.performSegue(withIdentifier: "toThirdVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //3) 💯 Need "prepare" method to transfer datas for 3) choice !!
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "안녕하세요"
            //⛔️thirdVC.mainLabel.text = "안녕하세요" <- This will cause an error because the instance of storyboard hasn't yet created.
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "Ciao!"
            //⛔️fourthVC.mainLabel.text = "Ciao!" <- This will cause an error because the instance of storyboard hasn't yet created.
        }
    }
    
    // 4) Connecting to next VC by Storyboard with Segue (Button to VC)
    // -> Since this Seuge is connected directly with Button and VC. There is no need to write perforSegue or anything. But, if you want to make it conditional the code below will help.
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        //print(#function)
//        if identifier == "toFourthVC" {
//            return false
//        }
        return true
    }
    

}

