//
//  ViewController.swift
//  calcCoffe
//
//  Created by Pavel on 03.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swich: UISwitch!
    @IBOutlet weak var background: UIImageView!
  
    @IBOutlet weak var gramCoffe: UITextField!
   
    @IBOutlet weak var espressoLabel: UILabel!
    
    @IBOutlet weak var milkLatte: UILabel!
    @IBOutlet weak var latte: UILabel!
    
    @IBOutlet weak var milkCapp: UILabel!
    @IBOutlet weak var capp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func swicher(_ sender: UISwitch) {
        if swich.isOn{
            background.isHidden = false
        }else{
            background.isHidden = true
        }
    }
    
        @IBAction func button(_ sender: UIButton){
            view.endEditing(true)
            
            let espressoGramm = "\((Int(gramCoffe.text!)!) * 2) g."
            espressoLabel.text = espressoGramm
            
            milkLatte.text = "\(((Int(gramCoffe.text!)!) * 2) * 7 - ((Int(gramCoffe.text!)!) * 2)) g."
            latte.text = "\(((Int(gramCoffe.text!)!) * 2) * 7) g."
            milkCapp.text = "\(((Int(gramCoffe.text!)!) * 2) * 4 - ((Int(gramCoffe.text!)!) * 2)) g."
            capp.text = "\(((Int(gramCoffe.text!)!) * 2) * 4) g."
    }
    
}
