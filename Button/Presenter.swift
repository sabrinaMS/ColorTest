//
//  Presenter.swift
//  Button
//
//  Created by Sabrina on 15/12/20.
//  Copyright © 2020 Sabrina. All rights reserved.
//

import Foundation
import UIKit

protocol PresenterView: class {
    func changeLabelColor() -> LabelModel
}

class Presenter {
    weak var view: PresenterView?
    // Pass something that conforms to PresenterView
    
    init(with view: PresenterView) {
        self.view = view
    }
    
    func getTimeStemp() -> String{
//      MARK: get timestamp
        let timestamp = Int(Date().timeIntervalSince1970 * 1000)
        print(timestamp)
                
//      MARK: transform timestamp in string to get last item
//      FIX: try with int
        let a = String(timestamp)
        let lastone = String(a.suffix(1))
        return lastone
    }
    
}
