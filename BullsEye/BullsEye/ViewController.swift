//
//  ViewController.swift
//  BullsEye
//
//  Created by James Choi on 2020/07/27.
//  Copyright © 2020 James Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Main.storyboard에 controller(button, label 등등 을 추가하고
    //ViewController에 기능을 구현 -> 서로 connection을 해줌 
    @IBAction func showAlert(){
        print("hello!")
        let alert = UIAlertController(title: "알람!", message: "이거슨 알람임", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "확인!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
       
    }

}

