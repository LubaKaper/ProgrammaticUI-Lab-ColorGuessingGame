//
//  MainView.swift
//  ProgrammaticUI-Lab-ColorGuessingGame
//
//  Created by Liubov Kaper  on 1/28/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var stackViewButton: UIStackView = {
       let stackViewB = UIStackView()
        stackViewB.backgroundColor = .systemTeal
        return stackViewB
    }()

    public lazy var colorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 183.0
        return view
    }()
    
    public lazy var buttonArr: [UIButton] = {
       let arr = [redButton, greenButton, blueButton]
        return arr
    }()
    
    public lazy var redButton: UIButton = {
       let redBut = UIButton()

        redBut.backgroundColor = .systemRed
        redBut.tag = 0
        return redBut
    }()
    
    public lazy var greenButton: UIButton = {
       let greenBut = UIButton()
        greenBut.backgroundColor = .systemGreen
        greenBut.tag = 1
        return greenBut
    }()
    
    
    public lazy var blueButton: UIButton = {
       let blueBut = UIButton()
        blueBut.backgroundColor = .systemBlue
        blueBut.tag = 2
        return blueBut
    }()
    
    public lazy var label: UILabel = {
        let mainLabel = UILabel()
        mainLabel.numberOfLines = 0
        mainLabel.textAlignment = .center
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

        setUpStackViewConstaraints()
        setUpLabelConstraints()
        setUpResetButtonConstraints()
    }
    
    private func setUpStackViewConstaraints() {
        addSubview(stackViewButton)
        stackViewButton.translatesAutoresizingMaskIntoConstraints = false
        
        let arr = [redButton, blueButton, greenButton]
        
        for button in arr{
            stackViewButton.addArrangedSubview(button)
        }
        
        NSLayoutConstraint.activate([

            stackViewButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20.0),
            stackViewButton.heightAnchor.constraint(equalToConstant: 80),
        stackViewButton.centerXAnchor.constraint(equalTo: colorView.centerXAnchor),
        stackViewButton.widthAnchor.constraint(equalTo: colorView.widthAnchor, multiplier: 1)
            
       ] )
        
        stackViewButton.distribution = .fillEqually
        stackViewButton.spacing = 40.0
}
    
    private func setUpLabelConstraints() {
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: stackViewButton.bottomAnchor, constant: 30),
            label.heightAnchor.constraint(equalToConstant: 80),
            label.centerXAnchor.constraint(equalTo: stackViewButton.centerXAnchor),
            label.widthAnchor.constraint(equalTo: stackViewButton.widthAnchor, multiplier: 0.5)
        ])
        
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
    
    private func setUpResetButtonConstraints() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resetButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            resetButton.centerXAnchor.constraint(equalTo: label.centerXAnchor)
        ])
    }
    
    
}
