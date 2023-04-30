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

