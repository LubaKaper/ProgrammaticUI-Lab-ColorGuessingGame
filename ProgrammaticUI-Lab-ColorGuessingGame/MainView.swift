//
//  MainView.swift
//  ProgrammaticUI-Lab-ColorGuessingGame
//
//  Created by Liubov Kaper  on 1/28/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var colorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 183.0
        return view
    }()
    
    public lazy var redButton: UIButton = {
       let redBut = UIButton()
        redBut.backgroundColor = .systemRed
        return redBut
    }()
    
    public lazy var greenButton: UIButton = {
       let greenBut = UIButton()
        greenBut.backgroundColor = .systemGreen
        return greenBut
    }()
    
    public lazy var blueButton: UIButton = {
       let blueBut = UIButton()
        blueBut.backgroundColor = .systemBlue
        return blueBut
    }()
    
    public lazy var label: UILabel = {
        let mainLabel = UILabel()
        mainLabel.backgroundColor = .systemPink
        return mainLabel
    }()
    
    public lazy var resetButton: UIButton = {
        let reset = UIButton()
        reset.setTitle("RESET", for: .normal)
        return reset
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
       setUpColorViewContstrains()
        setUpRedButtonConstraints()
        setUpBlueButtonConstraints()
    }
    
    private func setUpColorViewContstrains() {
        addSubview(colorView)
        colorView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            colorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            colorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            colorView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.40)
        ])
    }
    
    private func setUpRedButtonConstraints() {
        
        addSubview(redButton)
        redButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            
            redButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 30),
            redButton.centerXAnchor.constraint(equalTo: centerXAnchor),
          redButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),
          redButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25)
        ])
        
    }
    
    private func setUpBlueButtonConstraints() {
        addSubview(blueButton)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blueButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 30),
            blueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            blueButton.trailingAnchor.constraint(equalTo: redButton.leadingAnchor, constant: 30)
            
        ])
    }
}
