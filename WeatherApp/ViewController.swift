//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jefferson Machado on 27/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(
            "Load at first time"
        )
        
        setupView()
        
    }
    
    
    private func setupView(){
        view.backgroundColor = .red
        
        
        let customView = UIView(frame: .zero)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = .yellow
     
        view.addSubview(
            customView
        )
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
        ])
        
       
    }
    
    
    
    
    
    
    
}


