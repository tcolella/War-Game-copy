//
//  SecondViewController.swift
//  War Game
//
//  Created by Tommy Colella on 11/18/19.
//  Copyright © 2019 Tommy Colella. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var warGame = WarGame()
    var name1 = ""
    var name2 = ""
    
    @IBOutlet weak var name1TextField: UITextField!
    
    @IBOutlet weak var name2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        
        warGame.name1 = name1TextField.text!
        warGame.name2 = name2TextField.text!
        performSegue(withIdentifier: "segue2", sender: Any?.self)
    }
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let dvc = segue.destination as! FinalViewController
            dvc.warGame = self.warGame
        
    }
   
    @IBAction func onViewTapped(_ sender: Any) { view.endEditing(true)
    }
}
