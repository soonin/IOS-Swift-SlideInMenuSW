//
//  ViewController.swift
//  IOS-Swift-SlideInMenuSW
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuBarItem: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if revealViewController() != nil {
            menuBarItem.target = self.revealViewController()
            menuBarItem.action = #selector(SWRevealViewController().revealToggle(_:))
            
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        }
        
    }


}

