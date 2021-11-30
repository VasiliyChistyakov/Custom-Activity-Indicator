//
//  ViewController.swift
//  Custom Activity Indicator
//
//  Created by Чистяков Василий Александрович on 30.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let rotatingCirclesView = RotatingCirclesView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        configureRoatingCircle()
        configureSpinningCircleView()
    }

    private func configure() {
        view.backgroundColor = .systemTeal
    }
    
    private func configureSpinningCircleView() {
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTapped)))
    }
    
    func configureRoatingCircle() {
        view.addSubview(rotatingCirclesView)
        
        NSLayoutConstraint.activate([
            rotatingCirclesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rotatingCirclesView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rotatingCirclesView.heightAnchor.constraint(equalToConstant: 100),
            rotatingCirclesView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    @objc func viewTapped() {
        rotatingCirclesView.animate(rotatingCirclesView.circle1, counter: 1)
        rotatingCirclesView.animate(rotatingCirclesView.circle2, counter: 3)
    }

}

