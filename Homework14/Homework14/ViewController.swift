//
//  ViewController.swift
//  Homework14
//
//  Created by Kato on 5/4/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let redView: UIView = {
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .red
        
        return red
    }()
    
    var redViewHeight: NSLayoutConstraint!
    var redViewWidth: NSLayoutConstraint!
    var redViewtoX: NSLayoutConstraint!
    var redViewToY: NSLayoutConstraint!
    
    
    let greenView: UIView = {
        let green = UIView()
        green.translatesAutoresizingMaskIntoConstraints = false
        green.backgroundColor = .green
        
        return green
    }()
    
    var greenViewHeight: NSLayoutConstraint!
    var greenViewWidth: NSLayoutConstraint!
    var greenViewtoX: NSLayoutConstraint!
    var greenViewToY: NSLayoutConstraint!
    
    let button: UIButton = {
        
        let b = UIButton()
        b.backgroundColor = .blue
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Button", for: .normal)
        
        b.addTarget(self, action: #selector(onButtonTapped), for: .touchUpInside)
        
        b.layer.cornerRadius = 10
        b.layer.borderColor = UIColor.red.cgColor
        b.layer.borderWidth = 1
        
        return b
    }()
    
    let firstTextField: UITextField = {
        let txtField1 = UITextField()
        txtField1.borderStyle = UITextField.BorderStyle.line
        txtField1.placeholder = "1"
        txtField1.backgroundColor = UIColor.white
        txtField1.translatesAutoresizingMaskIntoConstraints = false
        
        return txtField1
    }()
    
    
    let secondTextField: UITextField = {
        let txtField2 = UITextField()
        txtField2.borderStyle = UITextField.BorderStyle.line
        txtField2.placeholder = "2"
        txtField2.backgroundColor = UIColor.white
        txtField2.translatesAutoresizingMaskIntoConstraints = false
        
        return txtField2
    }()
    
    let upButton: UIButton = {
        let up = UIButton()
        up.backgroundColor = .red
        up.translatesAutoresizingMaskIntoConstraints = false
        up.setTitle("↑", for: .normal)
        
        up.addTarget(self, action: #selector(upButtonTapped), for: .touchUpInside)
            
        up.layer.cornerRadius = 10
        up.layer.borderColor = UIColor.blue.cgColor
        up.layer.borderWidth = 1
        
        return up
    }()
    
    let downButton: UIButton = {
        let down = UIButton()
        down.backgroundColor = .red
        down.translatesAutoresizingMaskIntoConstraints = false
        down.setTitle("↓", for: .normal)
        
        down.addTarget(self, action: #selector(downButtonTapped), for: .touchUpInside)
        
        down.layer.cornerRadius = 10
        down.layer.borderColor = UIColor.blue.cgColor
        down.layer.borderWidth = 1
        
        return down
    }()
    
    let leftButton: UIButton = {
        let left = UIButton()
        left.backgroundColor = .red
        left.translatesAutoresizingMaskIntoConstraints = false
        left.setTitle("←", for: .normal)
        
        left.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
        
        left.layer.cornerRadius = 10
        left.layer.borderColor = UIColor.blue.cgColor
        left.layer.borderWidth = 1
        
        return left
    }()
    
    let rightButton: UIButton = {
        let right = UIButton()
        right.backgroundColor = .red
        right.translatesAutoresizingMaskIntoConstraints = false
        right.setTitle("→", for: .normal)
        
        right.addTarget(self, action: #selector(rightButtonTapped), for: .touchUpInside)
        
        right.layer.cornerRadius = 10
        right.layer.borderColor = UIColor.blue.cgColor
        right.layer.borderWidth = 1
        
        return right
    }()
    
    
    let slider: UISlider = {
        let slide = UISlider()
        slide.translatesAutoresizingMaskIntoConstraints = false
        
        return slide
    }()


    

    
    override func loadView() {
        super.loadView()
        
        self.view.addSubview(firstTextField)
        self.view.addSubview(secondTextField)
   
        self.view.addSubview(button)
        
        self.view.addSubview(upButton)
        self.view.addSubview(downButton)
        self.view.addSubview(leftButton)
        self.view.addSubview(rightButton)
        
        
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        
        self.view.addSubview(slider)
  
        
        
        redViewWidth = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        redViewHeight = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        redViewtoX = NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: -100)
        
        redViewToY = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 30)
        
        self.view.addConstraint(redViewWidth)
        self.view.addConstraint(redViewHeight)
        self.view.addConstraint(redViewtoX)
        self.view.addConstraint(redViewToY)
        
        
        
        greenViewWidth = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        greenViewHeight = NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        greenViewtoX = NSLayoutConstraint(item: greenView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 100)
               
        greenViewToY = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 30)
        
        self.view.addConstraint(greenViewWidth)
        self.view.addConstraint(greenViewHeight)
        self.view.addConstraint(greenViewtoX)
        self.view.addConstraint(greenViewToY)
        
        
        NSLayoutConstraint.activate([
            firstTextField.bottomAnchor.constraint(equalTo: upButton.topAnchor, constant: -100),
            firstTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            firstTextField.widthAnchor.constraint(equalToConstant: 100),
            firstTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
               
               
        NSLayoutConstraint.activate([
            secondTextField.topAnchor.constraint(equalTo: firstTextField.topAnchor, constant: 0),
            secondTextField.leadingAnchor.constraint(equalTo: firstTextField.trailingAnchor, constant: 15),
            secondTextField.widthAnchor.constraint(equalToConstant: 100),
            secondTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
               
               
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: secondTextField.topAnchor, constant: 0),
            button.leadingAnchor.constraint(equalTo: secondTextField.trailingAnchor, constant: 15),
            button.widthAnchor.constraint(equalToConstant: (self.view.bounds.width - 90)/3),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
               
               
        NSLayoutConstraint.activate([
            upButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 90),
            upButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            upButton.widthAnchor.constraint(equalToConstant: 40),
            upButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            downButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 210),
            downButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            downButton.widthAnchor.constraint(equalToConstant: 40),
            downButton.heightAnchor.constraint(equalToConstant: 40)
        ])
               
        NSLayoutConstraint.activate([
            leftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            leftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -60),
            leftButton.widthAnchor.constraint(equalToConstant: 40),
            leftButton.heightAnchor.constraint(equalToConstant: 40)
        ])
               
        NSLayoutConstraint.activate([
            rightButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            rightButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 60),
            rightButton.widthAnchor.constraint(equalToConstant: 40),
            rightButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            slider.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            slider.heightAnchor.constraint(equalToConstant: 50)
        ])
               

        
    }
    
   /* var redViewConstraint: NSLayoutConstraint!
    var greenViewConstraint: NSLayoutConstraint!
    var spacingCount = 0
 */
    
    var tappedView = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(self.tap1(_:)))
        tap1.delegate = self
        redView.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.tap2(_:)))
        tap2.delegate = self
        greenView.addGestureRecognizer(tap2)
        
    }
    
    
    @objc func tap1(_ gestureRecognizer: UITapGestureRecognizer) {
        redView.alpha = 0.5
        tappedView = 1
        print("red tapped")
    }
    
    @objc func tap2(_ gestureRecognizer: UITapGestureRecognizer) {
        greenView.alpha = 0.5
        tappedView = 2
        print("green tapped")
    }
    
    
    @objc func upButtonTapped() {
        print("up tapped")
        
        if tappedView == 1 {
            redViewToY.constant -= 10
        }
        else if tappedView == 2 {
            greenViewToY.constant -= 10
        }
        
    }
    
    @objc func downButtonTapped() {
        print("down tapped")
        
        if tappedView == 1 {
            redViewToY.constant += 10
        }
        else if tappedView == 2 {
            greenViewToY.constant += 10
        }
        
    }
    
    @objc func leftButtonTapped() {
        print("left tapped")
        
        if tappedView == 1 {
            redViewtoX.constant -= 10
        }
        else if tappedView == 2 {
            greenViewtoX.constant -= 10
        }
        
    }
    
    @objc func rightButtonTapped() {
        print("right tapped")
        
        if tappedView == 1 {
            redViewtoX.constant += 10
        }
        else if tappedView == 2 {
            greenViewtoX.constant += 10
        }
        
    }
    
    @objc func onButtonTapped() {
        print("button tapped")
        
        if tappedView == 1 {
            redViewWidth.constant = CGFloat(Int(firstTextField.text!)!)
            redViewHeight.constant = CGFloat(Int(secondTextField.text!)!)
        }
        else if tappedView == 2 {
            greenViewWidth.constant = CGFloat(Int(firstTextField.text!)!)
            greenViewHeight.constant = CGFloat(Int(secondTextField.text!)!)
        }
    }



}

