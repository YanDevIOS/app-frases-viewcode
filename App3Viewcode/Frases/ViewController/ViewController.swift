//
//  ViewController.swift
//  App3Viewcode
//
//  Created by Yan Alejandro on 28/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var frasesScreen: FrasesScreen?
    
    override func loadView() {
        self.frasesScreen = FrasesScreen()
        self.view = self.frasesScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

