//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Sergei Bakhmatov on 02.05.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabal: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var deleyLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func runButoonTapped(_ sender: UIButton) {
    }
    

}

