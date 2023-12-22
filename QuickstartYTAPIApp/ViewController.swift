//
//  ViewController.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 04.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        model.getVideos()
    }
    
}

