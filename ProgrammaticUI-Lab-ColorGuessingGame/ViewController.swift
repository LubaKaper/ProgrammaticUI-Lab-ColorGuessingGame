//
//  ViewController.swift
//  ProgrammaticUI-Lab-ColorGuessingGame
//
//  Created by Liubov Kaper  on 1/28/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    var score = 0
    
    var redValue = CGFloat.random(in: 0...1)
    var greenValue = CGFloat.random(in: 0...1)
    var blueValue = CGFloat.random(in: 0...1)
    var resetBool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        self.mainView.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0.3...1.0))
        mainView.redButton.addTarget(self, action: #selector(randomColorButton(_:)), for: .touchUpInside)
        mainView.greenButton.addTarget(self, action: #selector(randomColorButton(_:)), for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(randomColorButton(_:)), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(resetButton(_:)), for: .touchUpInside)
    }
    
    @objc
    private func randomColorButton(_ sender: UIButton) {
        
        let colorArray = [redValue, greenValue, blueValue]
        
        //let currentColor =  colorArray.max()
        
        if resetBool == true {
            switch sender.tag {
            case 0:
                if colorArray.max() == redValue{
                    // guessColorLabel.text = "Correct!"
                    redValue = CGFloat.random(in: 0...1)
                    greenValue = CGFloat.random(in: 0...1)
                    blueValue = CGFloat.random(in: 0...1)
                    self.mainView.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                    score += 1
                    mainView.label.text = " Correct! \nYour score is \(score)"
                    
                } else {
                    mainView.label.text = "You Loose. Press reset button to start over \nYour score is \(score)"
                    resetBool = false
                    score += 0
                }
                
            case 1:
                if colorArray.max() == greenValue{
                    // guessColorLabel.text = "Correct!"
                    redValue = CGFloat.random(in: 0...1)
                    greenValue = CGFloat.random(in: 0...1)
                    blueValue = CGFloat.random(in: 0...1)
                    self.mainView.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                    score += 1
                    mainView.label.text = " Correct! \nYour score is \(score)"
                    
                } else {
                    mainView.label.text = "You Loose. Press reset button to start over \nYour score is \(score)"
                    resetBool = false
                    score += 0
                }
            case 2:
                if colorArray.max() == blueValue{
                    // guessColorLabel.text = "Correct!"
                    redValue = CGFloat.random(in: 0...1)
                    greenValue = CGFloat.random(in: 0...1)
                    blueValue = CGFloat.random(in: 0...1)
                    self.mainView.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
                    
                    score += 1
                    mainView.label.text = " Correct! \nYour score is \(score)"
                    
                } else {
                    mainView.label.text = "You Loose. Press reset button to start over \nYour score is \(score)"
                    resetBool = false
                    score += 0
                }
            default:
                mainView.label.text = "error"
                
            }
        }
        // print("R color = \(redValue), G Color = \(greenValue) B Color = \(blueValue)")
    }
    
    @objc
    private func resetButton(_ sender: UIButton) {
        redValue = CGFloat.random(in: 0...1)
        greenValue = CGFloat.random(in: 0...1)
        blueValue = CGFloat.random(in: 0...1)
        self.mainView.colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat.random(in: 0...1))
        
        mainView.label.text = "Guess the color! \nSCORE:0"
        score = 0
        
        resetBool = true
    }
    
    
}

