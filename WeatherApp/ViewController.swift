//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jefferson Machado on 27/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
       view.translatesAutoresizingMaskIntoConstraints = false
       view.backgroundColor = .yellow
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(
            "Load at first time"
        )
        
        setupView()
        
    }
    
    
    private func setupView(){
        print("inside setupView")
        view.backgroundColor = .red
         
        setHierarchy()
        setConstraint()
    }
    
    private func setHierarchy(){
        print("inside setHierarchy")
        view.addSubview(customView)
    }
    
    
    
    private func setConstraint(){
        print("inside setConstraint")
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
        ])
    }
    
    
    
    
    
    
    
}


