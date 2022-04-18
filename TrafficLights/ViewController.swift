//
//  ViewController.swift
//  TrafficLights
//
//  Created by Павел on 18.04.2022.
//

// Не понял почему "слетает" размер кнопки и шрифта, после нажатия
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var grennView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var stateLights = State.off
    
    override func viewDidLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        grennView.layer.cornerRadius = grennView.frame.size.width / 2

    }

    @IBAction func pressStartButtom() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        grennView.alpha = 0.3
        
        switch stateLights {
        case .off, .green :
            redView.alpha = 1
            stateLights = .red
        case .red:
            yellowView.alpha = 1
            stateLights = .yellow
        case .yellow:
            grennView.alpha = 1
            stateLights = .green
        }
        
    }
    
}

extension ViewController {
    enum State {
        case off
        case red
        case yellow
        case green
    }
}

