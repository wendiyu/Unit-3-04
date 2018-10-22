

// Created on: October-18-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for calculate it is leap year or not 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let questionLable = UILabel()
    let checkNumberLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter a year and we will calculate it is a leap year or not. "
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Put a whole number    "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("calculate", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateLeapYear), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculateLeapYear() {
        // show answers 
        let numberEnter : Int =  Int(numberTextField.text!)!
        
        if numberEnter % 4 == 0 && numberEnter % 100 == 0 && numberEnter % 400 ==  0{ 
            answerLable.text = "It's a leap year!"
        }
        else if numberEnter % 4 == 0 && numberEnter % 100 != 0 {
            answerLable.text = "It's a leap year!"
        }
        else if numberEnter % 100 == 0 && numberEnter % 400 == 0 {
            answerLable.text = "It's a leap year!"
        }
        else {
            answerLable.text = "It is not a leap year."
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
