//
//  ViewController.swift
//  Button
//
//  Created by Sabrina on 14/12/20.
//  Copyright © 2020 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var presenter = Presenter(with: self)
    let label = UILabel(frame: CGRect.zero)
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
    let stackView   = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //MARK: edit label
        editLabel()
        
        //MARK: create and edit button
        editButton()
        
        //MARK: crete stack view add itens in subview
        editStack()
    }
    
    func editLabel() {
        label.text = "Sorteie uma cor 🤹‍♀️"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
    }
    
    func editButton() {
        button.setTitle("tap me", for: .normal)
        button.backgroundColor = UIColor.init(named: "1")
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.addTarget(self, action: #selector(setColor), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    func editStack() {
        //stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(label)
        
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        //        stackView.alignment = UIStackView.Alignment.center
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        //        stackView.spacing   = 20.0
        //        stackView.layoutIfNeeded()
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        //MARK: Crete centered (y and x) constraints
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    @IBAction func setColor(_ sender: Any) {
        //MARK: get current date and transform in timestemp
        //        changeLabelColor()
        
        let detailVC = DetailViewController()
        detailVC.model = changeLabelColor()
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension ViewController: PresenterView {
    internal func changeLabelColor() -> LabelModel{
        let lastone = presenter.getTimeStemp()
        var model = LabelModel()
        
        //MARK: set label color according to the last number in timestemp
        switch lastone {
        case "1":
            model.color = "1"
            model.text = "Sou o número \(lastone) e minha cor é rosa 🌸"
            
            label.textColor = UIColor(named: "1") ?? UIColor.systemPink
        case"2":
            model.color = "2-lavanda"
            model.text = "Sou o número \(lastone) e minha cor é lavanda 🟪"
            
            label.textColor = UIColor(named: "2-lavanda") ?? UIColor.purple
        case "3":
            model.color = "3-purple"
            model.text = "Sou o número \(lastone) e minha cor é roxo 🍇"
            
            label.textColor = UIColor(named: "3-purple") ?? UIColor.purple
        case "4":
            model.color = "4-blue"
            model.text = "Sou o número \(lastone) e minha cor é azul 🦋"
            
            label.textColor = UIColor(named: "4-blue")  ?? UIColor.blue
        case"5":
            model.color = "5-sky"
            model.text = "Sou o número \(lastone) e minha cor é azul 💧"
            
            label.textColor = UIColor(named: "5-sky")  ?? UIColor.blue
        case "6":
            model.color = "6-light-green"
            model.text = "Sou o número \(lastone) e minha cor é verde 🍀"
            
            label.textColor = UIColor(named: "6-light-green")  ?? UIColor.green
        case "7":
            model.color = "7-aspargus"
            model.text = "Sou o número \(lastone) e minha cor é marrom 🐿"
            
            label.textColor = UIColor(named: "7-aspargus")  ?? UIColor.brown
        case"8":
            model.color = "8-lemon"
            model.text = "Sou o número \(lastone) e minha cor é amarelo 🍋"
            
            label.textColor = UIColor(named: "8-lemon")  ?? UIColor.yellow
        case "9":
            model.color = "9-salmon"
            model.text = "Sou o número \(lastone) e minha cor é salmão 🍣"
            
            label.textColor = UIColor(named: "9-salmon")  ?? UIColor.systemPink
        case "0":
            model.color = "0-maraschino"
            model.text = "Sou o número \(lastone) e minha cor é vermelho 🍎"
            
            label.textColor = UIColor(named: "0-maraschino") ?? UIColor.black
        default:
            model.color = "3-light-green"
            model.text = "Sou o número \(lastone) e minha cor é verde"
            
            label.textColor = UIColor(named: "3-light-green")  ?? UIColor.green
        }
        return model
    }
}

