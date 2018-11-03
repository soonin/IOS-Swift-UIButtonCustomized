//
//  ViewController.swift
//  IOS-Swift-UIButtonCustomized
//
//  Created by Pooya on 2018-11-01.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet weak var refreshBtn: UIButton!
    @IBOutlet weak var lockBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        editBtn.setToDelete()
        
        deleteBtn.setToAdd()
        
        refreshBtn.setToEdit()
        
        lockBtn.setToLock()
        
    }


}

