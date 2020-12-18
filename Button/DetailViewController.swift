//
//  DetailViewController.swift
//  Button
//
//  Created by Sabrina on 15/12/20.
//  Copyright © 2020 Sabrina. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var model = LabelModel()
    private var label2 = UILabel(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: model.color) ?? UIColor.white
        
        changeLabel()
    }
    
    func changeLabel() {
        label2.text = model.text
        label2.textAlignment = .center
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label2)
                
        // MARK: Crete centered (y and x) constraints
        label2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
