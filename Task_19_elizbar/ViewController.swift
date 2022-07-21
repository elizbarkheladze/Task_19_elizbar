//
//  ViewController.swift
//  Task_19_elizbar
//
//  Created by alta on 7/21/22.
//

import UIKit

class ViewController: UIViewController {
    let headerLabel = UILabel()
    let imageView = UIImageView()
    let mailText = UITextField()
    let passwordText = UITextField()
    let loginBtn = UIButton()
    let signUpLbl = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGradientback()
        addHeader()
        addimage()
        addmailText()
        addpass()
        addLoginBtn()
        addSignUpBtn()
        correctHeights()

       
    }
    func loadGradientback(){
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
            ]
        view.layer.addSublayer(gradient)
    }
    func addHeader() {
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = "IOS DEVELOPER"
        headerLabel.font = headerLabel.font.withSize(40)
        headerLabel.textAlignment = .center

        view.addSubview(headerLabel)
        let left = NSLayoutConstraint(item: headerLabel,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 20).isActive = true
        let right = NSLayoutConstraint(item: headerLabel,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -20).isActive = true
        let top = NSLayoutConstraint(item: headerLabel,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: view.layoutMarginsGuide,
                                                attribute: .top,
                                                multiplier: 1,
                                      constant: 20).isActive = true

    }
    
    func addimage() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "smiley")
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .systemPink
        

        view.addSubview(imageView)
        let left = NSLayoutConstraint(item: imageView,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 50).isActive = true
        let right = NSLayoutConstraint(item: imageView,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -50).isActive = true
        let top = NSLayoutConstraint(item: imageView,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: headerLabel,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: 30).isActive = true
    }
    func addmailText() {
        mailText.translatesAutoresizingMaskIntoConstraints = false
        mailText.placeholder = "Email"
        mailText.layer.cornerRadius = 10
        mailText.backgroundColor = .systemGray4
        

        view.addSubview(mailText)
        let left = NSLayoutConstraint(item: mailText,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 40).isActive = true
        let right = NSLayoutConstraint(item: mailText,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -40).isActive = true
        let top = NSLayoutConstraint(item: mailText,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: imageView,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: 50).isActive = true

    }
    func addpass() {
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        passwordText.placeholder = "PassWord"
        passwordText.placeholder
        passwordText.layer.cornerRadius = 10
        passwordText.backgroundColor = .systemGray4
        

        view.addSubview(passwordText)
        let left = NSLayoutConstraint(item: passwordText,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 40).isActive = true
        let right = NSLayoutConstraint(item: passwordText,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -40).isActive = true
        let top = NSLayoutConstraint(item: passwordText,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: mailText,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: 10).isActive = true

    }
    func addLoginBtn() {
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Log In", for: .normal)
        loginBtn.layer.cornerRadius = 10
        loginBtn.backgroundColor = .green
        

        view.addSubview(loginBtn)
        let left = NSLayoutConstraint(item: loginBtn,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 50).isActive = true
        let right = NSLayoutConstraint(item: loginBtn,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -50).isActive = true
        let top = NSLayoutConstraint(item: loginBtn,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: passwordText,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: 40).isActive = true

        
    }

    func addSignUpBtn() {
        signUpLbl.translatesAutoresizingMaskIntoConstraints = false
        signUpLbl.text = "Don't Have an Account? than Sign Up"
        signUpLbl.textAlignment = .center
        signUpLbl.textColor = .black
        

        view.addSubview(signUpLbl)
        let left = NSLayoutConstraint(item: signUpLbl,
                                                attribute: .left,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .left,
                                                multiplier: 1,
                                      constant: 20).isActive = true
        let right = NSLayoutConstraint(item: signUpLbl,
                                                attribute: .right,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .right,
                                                multiplier: 1,
                                      constant: -20).isActive = true
        let top = NSLayoutConstraint(item: signUpLbl,
                                                attribute: .top,
                                                relatedBy: .equal,
                                                toItem: loginBtn,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: 50).isActive = true

        let bottom = NSLayoutConstraint(item: signUpLbl,
                                                attribute: .bottom,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: .bottom,
                                                multiplier: 1,
                                      constant: -20).isActive = true
    }
    
    func correctHeights(){
        let equality1 = NSLayoutConstraint.init(item: headerLabel, attribute: .height, relatedBy: .equal, toItem: imageView, attribute: .height, multiplier: 0.4, constant: 0).isActive = true
        let equality2 = NSLayoutConstraint.init(item: mailText, attribute: .height, relatedBy: .equal, toItem: passwordText, attribute: .height, multiplier: 1, constant: 0).isActive = true
        let equality3 = NSLayoutConstraint.init(item: mailText, attribute: .height, relatedBy: .equal, toItem: imageView, attribute: .height, multiplier: 0.15, constant: 0).isActive = true
        let equality4 = NSLayoutConstraint.init(item: mailText, attribute: .height, relatedBy: .equal, toItem: loginBtn, attribute: .height, multiplier: 0.9, constant: 0).isActive = true
        let equality5 = NSLayoutConstraint.init(item: mailText, attribute: .height, relatedBy: .equal, toItem: signUpLbl, attribute: .height, multiplier: 1.5, constant: 0).isActive = true
        
    }
}



