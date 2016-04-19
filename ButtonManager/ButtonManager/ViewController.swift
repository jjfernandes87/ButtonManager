//
//  ViewController.swift
//  ButtonManager
//
//  Created by Julio Fernandes on 19/04/16.
//  Copyright © 2016 Julio Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createSimpleButtonManagerNoLoading()
        createSimpleButtonManagerWithLoading()
        createSimpleButtonManagerDisable()
    }
    
    func createSimpleButtonManagerNoLoading() {
        let button = ButtonManager(frame: CGRectMake(15, 40, 345, 44))
        button.setTitle("no loading", forState: .Normal)
        button.fillColor = UIColor.lightGrayColor()
        button.strokeColor = UIColor.darkGrayColor()
        button.textColor = UIColor.darkGrayColor()
        button.loading = false
        button.cornerRadius = 5
        button.borderWidth = 1
        
        view.addSubview(button)
    }
    
    func createSimpleButtonManagerWithLoading() {
        let button = ButtonManager(frame: CGRectMake(15, 104, 345, 44))
        button.setTitle("with loading", forState: .Normal)
        button.fillColor = UIColor.darkGrayColor()
        button.strokeColor = UIColor.lightGrayColor()
        button.textColor = UIColor.lightGrayColor()
        button.cornerRadius = 5
        button.borderWidth = 1
        
        view.addSubview(button)
    }
    
    func createSimpleButtonManagerDisable() {
        let button = ButtonManager(frame: CGRectMake(15, 168, 345, 44))
        button.setTitle("disable", forState: .Normal)
        button.fillColor = UIColor.lightGrayColor()
        button.strokeColor = UIColor.lightGrayColor()
        button.textColor = UIColor.darkGrayColor()
        button.cornerRadius = 5
        button.borderWidth = 1
        button.disable = false
        
        view.addSubview(button)
    }
}

