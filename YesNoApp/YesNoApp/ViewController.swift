//
//  ViewController.swift
//  YesNoApp
//
//  Created by Андрей Неверовский on 10.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!

    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        answerButton.setTitleColor(.darkGray, for: .highlighted)
    }
    
    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.answerLabel.text = answer ? "YES" : "NO"
            self.answerLabel.textColor = answer ? .green : .red
        }
    }
    
    
}
