//
//  SecondViewController.swift
//  PassDataDelegate4
//
//  Created by admin on 2/14/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

protocol passDataDelegate {
    func passDataDelegate1(data1: String)
    func passDataDelegate2(data2: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldSecond1: UITextField!
    @IBOutlet weak var textFieldSecond2: UITextField!
    var dataSecond1: String?
    var dataSecond2: String?
    var delegate: passDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataSecond1 != nil {
            textFieldSecond1.text = dataSecond1
        }
        if dataSecond2 != nil {
            textFieldSecond2.text = dataSecond2
        }
    }
    
    @IBAction func backToView() {
        self.delegate?.passDataDelegate2(data2: textFieldSecond2.text ?? "")
        self.delegate?.passDataDelegate1(data1: textFieldSecond1.text ?? "")
        dismiss(animated: true, completion: nil)
    }
}
