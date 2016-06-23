//
//  ViewController.swift
//  UILayoutSample
//
//  Created by SeoDongHee on 2016. 6. 23..
//  Copyright © 2016년 SeoDongHee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        self.title = "StackView"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Add hButton", style: .Plain, target: self, action: #selector(leftBarButton))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add vButton", style: .Plain, target: self, action: #selector(rightBarButton))
        self.automaticallyAdjustsScrollViewInsets = true
        
        view.backgroundColor = UIColor.yellowColor()

        
        //stackView
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        let viewsDictionary = ["stackView": stackView, "superview": self.view]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[stackView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-40-[stackView]-40-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
    }
    
    func leftBarButton() {
        let nestingView = UIStackView()
        nestingView.translatesAutoresizingMaskIntoConstraints = false
        for _ in 0...2 {
            let col1: CGFloat = CGFloat(arc4random_uniform(100)) / 100
            let col2: CGFloat = CGFloat(arc4random_uniform(100)) / 100
            let col3: CGFloat =  CGFloat(arc4random_uniform(100)) / 100
            let button = UIButton()
            button.backgroundColor = UIColor(red: col1, green: col2, blue: col3, alpha: 1)
            nestingView.addArrangedSubview(button)
        }
        nestingView.axis = .Horizontal
        nestingView.distribution = .FillEqually
        nestingView.alignment = .Fill
        nestingView.spacing = 5
        
        stackView.axis = .Horizontal
        stackView.distribution = .FillEqually
        stackView.alignment = .Fill
        stackView.spacing = 5
        self.stackView.addArrangedSubview(nestingView)

    }
    
    func rightBarButton() {
        let nestingView = UIStackView()
        nestingView.translatesAutoresizingMaskIntoConstraints = false
        for _ in 0...2 {
            let col1: CGFloat = CGFloat(arc4random_uniform(100)) / 100
            let col2: CGFloat = CGFloat(arc4random_uniform(100)) / 100
            let col3: CGFloat =  CGFloat(arc4random_uniform(100)) / 100
            let button = UIButton()
            button.backgroundColor = UIColor(red: col1, green: col2, blue: col3, alpha: 1)
            nestingView.addArrangedSubview(button)
        }
        nestingView.axis = .Vertical
        nestingView.distribution = .FillEqually
        nestingView.alignment = .Fill
        nestingView.spacing = 5
        
        stackView.axis = .Vertical
        stackView.distribution = .FillEqually
        stackView.alignment = .Fill
        stackView.spacing = 5
        self.stackView.addArrangedSubview(nestingView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

