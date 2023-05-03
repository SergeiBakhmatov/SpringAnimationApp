//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Sergei Bakhmatov on 02.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabal: UILabel!
    @IBOutlet var curveLabel: UILabel!
    
    private let animations = Animation.getPresetList()
    
    private var animationStarted = false
    private var currentPreset = ""
    private var currentCurve = ""
    private var nextPreset = ""
    private var nextCurve = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentPreset = animations.preset.randomElement() ?? ""
        currentCurve = animations.curve.randomElement() ?? ""
        
        presetLabal.text = "Preset: \(currentPreset)"
        curveLabel.text = "Curve: \(currentCurve)"

    }
    
    
    @IBAction func runButoonTapped(_ sender: UIButton) {
        
        if !animationStarted {
            springView.animation = currentPreset
            springView.curve = currentCurve
            springView.animate()
            animationStarted.toggle()
            
            nextPreset = animations.preset.randomElement() ?? ""
            nextCurve = animations.curve.randomElement() ?? ""
            
        } else {
            currentPreset = nextPreset
            currentCurve = nextCurve
            
            presetLabal.text = "Preset: \(currentPreset)"
            curveLabel.text = "Curve: \(currentCurve)"
            
            springView.animation = currentPreset
            springView.curve = currentCurve
            springView.animate()
            
            nextPreset = animations.preset.randomElement() ?? ""
            nextCurve = animations.curve.randomElement() ?? ""
        }
        
        sender.setTitle("Run \(nextPreset)", for: .normal)

    }
}


