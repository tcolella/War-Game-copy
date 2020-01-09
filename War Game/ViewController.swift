//
//  InitialView.swift
//  War Game
//
//  Created by Tommy Colella on 11/18/19.
//  Copyright © 2019 Tommy Colella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var warGame = WarGame()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.warGame = self.warGame
        
    }
}
