//
//  ViewController.swift
//  User Interface Example
//
//  Created by Cuneyt on 30.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultAlert: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionSheet(_ sender: Any) {
    }
    @IBAction func customAlert(_ sender: Any) {
        let customAlertController=UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
       
       
        
        customAlertController.addTextField{ textField in
            textField.placeholder="E-Mail"
            textField.keyboardType = .emailAddress
        }
        customAlertController.addTextField{ textField in
            textField.placeholder="Password"
            textField.isSecureTextEntry = true
        }
        let savedAction=UIAlertAction(title: "Saved", style:.cancel){
            action in
            print("saved cancel")
            
            let savedEmail=(customAlertController.textFields![0] as  UITextField).text!
            let savedPassord=(customAlertController.textFields![1] as  UITextField).text!
            
            self.resultAlert.text = "E-Mail: \(savedEmail) Password: \(savedPassord) ";
        }
        customAlertController.addAction(savedAction)
        self.present(customAlertController, animated: true)
        
    }
    
    @IBAction func basicAlert(_ sender: Any) {
        let basicAlertController=UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let cancelAction=UIAlertAction(title: "Cancel", style:.cancel){
            action in
            print("clicked cancel")
        }
        basicAlertController.addAction(cancelAction)
        
        let approveAction=UIAlertAction(title: "Approve", style: .default){
            action in
            print("approve cancel")
        }
        
        basicAlertController.addAction(approveAction)
        
        self.present(basicAlertController, animated: true)
    }
}

