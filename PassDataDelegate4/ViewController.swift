//
//  ViewController.swift
//  PassDataDelegate4
//
//  Created by admin on 2/14/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, passDataDelegate {
    func passDataDelegate2(data2: String) {
        self.textFieldView2.text = data2
    }

    func passDataDelegate1(data1: String) {
        self.textFieldView1.text = data1
    }
    
    @IBOutlet weak var textFieldView1: UITextField!
    @IBOutlet weak var textFieldView2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as? SecondViewController
        secondViewController?.dataSecond1 = textFieldView1.text
        secondViewController?.dataSecond2 = textFieldView2.text
        
        // truyen data bang delegate
        secondViewController?.delegate = self
    }
}

