////
////  ViewController.swift
////  Button
////
////  Created by Sabrina on 14/12/20.
////  Copyright © 2020 Sabrina. All rights reserved.
////
//
//import UIKit
//
//class testViewController: UIViewController {
//
//    let label = UILabel(frame: CGRect.zero)
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
////      MARK: edit label
//        label.text = "Nothing to show"
//        label.textAlignment = .center
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        self.view.addSubview(label)
//
////      MARK: create and edit button
//        let button2 = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
//        button2.setTitle("tap me", for: .normal)
//        button2.backgroundColor = UIColor.init(named: "1-carnation")
//        button2.addTarget(self, action: #selector(setColor), for: .touchUpInside)
//
//        self.view.addSubview(button2)
//
//
////      MARK: crete stack view
//        let stackView   = UIStackView()
//        stackView.axis  = NSLayoutConstraint.Axis.vertical
////        stackView.distribution  = UIStackView.Distribution.equalSpacing
//        stackView.alignment = UIStackView.Alignment.center
//        stackView.spacing   = 20.0
//
////      MARK: add itens in subview
//        stackView.addArrangedSubview(label)
//        stackView.addArrangedSubview(button2)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        self.view.addSubview(stackView)
//
////      MARK: Crete centered (y and x) constraints
//        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//    }
//
//
//    @IBAction func setColor(_ sender: Any) {
////      MARK: get current date and transform in timestemp
//        let timestamp = Date().toMili()
//
////      MARK: transform timestamp in string to get last item
//        let a = String(timestamp)
//        let lastone = String(a.suffix(1))
//        print(lastone)
//
////      MARK: set label color according to the last number
//        switch lastone {
//            case "1":
//                label.textColor = UIColor(named: "1-carnation")
//            case"2":
//                label.textColor = UIColor(named: "2-lavanda")
//            case "3":
//                label.textColor = UIColor(named: "3-purple")
//            case "4":
//                label.textColor = UIColor(named: "4-blue")
//            case"5":
//                label.textColor = UIColor(named: "5-sky")
//            case "6":
//                label.textColor = UIColor(named: "6-light-green")
//            case "7":
//                label.textColor = UIColor(named: "7-aspargus")
//            case"8":
//                label.textColor = UIColor(named: "8-lemon")
//            case "9":
//                label.textColor = UIColor(named: "9-salmon")
//            case "0":
//            label.textColor = UIColor(named: "0-maraschino")
//
//            default:
//                label.textColor = UIColor(named: "light-green")
//        }
//    }
//}
//
////MARK: transform timestamp in miliseconds
//extension Date {
//    func toMili() -> Int64 {
//        return Int64(self.timeIntervalSince1970 * 1000)
//    }
//}
//
