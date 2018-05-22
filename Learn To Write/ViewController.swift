//
//  ViewController.swift
//  Learn To Write
//
//  Created by Benjamin Elias on 11/2/17.
//  Copyright © 2017 period8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var vowel = false
    var diacritic = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func vowelImport(_ sender: UIButton) {
    }
    
    @IBAction func diacriticImport(_ sender: UIButton) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! DrawingViewController
        if segue.identifier == "vowelSegue" {
            nvc.vowelImport = true
        }
        if segue.identifier == "diacriticSegue" {
            nvc.diacriticImport = true
        }
    }

}

