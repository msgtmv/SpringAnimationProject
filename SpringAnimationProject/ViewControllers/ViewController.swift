//
//  ViewController.swift
//  SpringAnimationProject
//
//  Created by Муслим Гаппаров on 3/4/24.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var presets: [AnimationPreset] = DataManager.shared.getPresets()
    var curves: [AnimationCurve] = DataManager.shared.getCurves()
    var force: Int {
        Int.random(in: 1...2)
    }
    var duration: Double {
        Double.random(in: 1...1.5)
    }
    var delay: Double {
        Double.random(in: 0...0.5)
    }
    
    let numberOne = Int.random(in: 0...26)
    var newNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = presets[numberOne].rawValue
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        var number: Int
        
        if let newNumber = newNumber {
            number = newNumber
        } else {
            number = numberOne
        }
        
        switch presets[number] {
        case .pop:
            doAnimation(animation: presets[number])
        case .slideLeft:
            doAnimation(animation: presets[number])
        case .slideRight:
            doAnimation(animation: presets[number])
        case .slideDown:
            doAnimation(animation: presets[number])
        case .slideUp:
            doAnimation(animation: presets[number])
        case .squeezeLeft:
            doAnimation(animation: presets[number])
        case .squeezeRight:
            doAnimation(animation: presets[number])
        case .squeezeDown:
            doAnimation(animation: presets[number])
        case .squeezeUp:
            doAnimation(animation: presets[number])
        case .fadeIn:
            doAnimation(animation: presets[number])
        case .fadeOut:
            doAnimation(animation: presets[number])
        case .fadeOutIn:
            doAnimation(animation: presets[number])
        case .fadeInLeft:
            doAnimation(animation: presets[number])
        case .fadeInRight:
            doAnimation(animation: presets[number])
        case .fadeInDown:
            doAnimation(animation: presets[number])
        case .fadeInUp:
            doAnimation(animation: presets[number])
        case .zoomIn:
            doAnimation(animation: presets[number])
        case .zoomOut:
            doAnimation(animation: presets[number])
        case .fall:
            doAnimation(animation: presets[number])
        case .shake:
            doAnimation(animation: presets[number])
        case .flipX:
            doAnimation(animation: presets[number])
        case .flipY:
            doAnimation(animation: presets[number])
        case .morph:
            doAnimation(animation: presets[number])
        case .squeeze:
            doAnimation(animation: presets[number])
        case .flash:
            doAnimation(animation: presets[number])
        case .wobble:
            doAnimation(animation: presets[number])
        case .swing:
            doAnimation(animation: presets[number])
        }
        
        func doAnimation(animation: AnimationPreset) {
            animationView.animation = animation.rawValue
            animationView.curve = curves[Int.random(in: 0..<curves.count)].rawValue
            animationView.force = CGFloat(force)
            animationView.duration = CGFloat(duration)
            animationView.delay = CGFloat(delay)
            animationView.animate()
            
            newNumber = Int.random(in: 0..<presets.count)
            sender.setTitle("Run \(presets[newNumber ?? 0])", for: .normal)
            
            presetLabel.text = animationView.animation
            curveLabel.text = animationView.curve
            forceLabel.text = String(format: "%.2f", animationView.force)
            durationLabel.text = String(format: "%.2f", animationView.duration)
            delayLabel.text = String(format: "%.2f", animationView.delay)
        }
    }
    
}
