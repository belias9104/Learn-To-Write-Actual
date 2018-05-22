//
//  DrawingViewController.swift
//  Learn To Write
//
//  Created by Benjamin Elias on 2/28/18.
//  Copyright © 2018 period8. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController {

    var vowelImport = false
    var diacriticImport = false
    
    var vowels: [String] = ["അ","ആ","ഇ" ,"ഈ","ഉ","ഊ","എ","ഏ","ഐ","ഒ","ഓ","ഔ"]
    var diacritics: [String] = ["പാ","പി","പീ","പു","പൂ","പെ","പേ","പൈ","പൊ","പോ","പൌ","പം","പഃ","പൃ","പൄ"]
    var consonants: [String] = ["ക","ഖ", "ഗ"]
    
    //add consonants
    //add game
    //add words
    //https://www.eki.ee/wgrs/rom1_ml.pdf
    
    @IBOutlet weak var myCanvasView: CanvasView!
    @IBOutlet weak var malayalamText: UILabel!
//    var circleRecognizer: CircleGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        circleRecognizer = CircleGestureRecognizer(target: self, action: "circled:")
//        view.addGestureRecognizer(circleRecognizer)
//        
        var randomNumber = Int(arc4random_uniform(12))
        if vowelImport {
            malayalamText.text = vowels[randomNumber]
            vowels.remove(at: randomNumber)
        }
        if diacriticImport {
            malayalamText.text = diacritics[randomNumber]
            diacritics.remove(at: randomNumber)
        }
        // Do any additional setup after loading the view.
    
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearCanvas(_ sender: UIButton) {
        myCanvasView.clearCanvas()
        reloadInputViews()
     var vowelCount = vowels.count
        var newRandomNumber = Int(arc4random_uniform(UInt32(vowelCount)))
        malayalamText.text = vowels[newRandomNumber]
        vowels.remove(at: newRandomNumber)
        return
    }
    
    @IBAction func returnToHomeScreen(_ sender: UIButton) {
        vowelImport = false
        diacriticImport = false
        
        
        
    }
    //    func findCircledView(center: CGPoint) {
//        // walk through the image views and see if the center of the drawn circle was over one of the views
//        for (index, view) in enumerate() {
//            let windowRect = self.view.window?.convertRect(view.frame, fromView: view.superview)
//            if windowRect!.contains(center) {
//                println("Circled view # \(index)")
//                selectImageViewAtIndex(index)
//            }
//        }
//    }
//
//    func circled(c: CircleGestureRecognizer) {
//        if c.state == .ended {
//            let center = c.location(in: view)
//            findCircledView(center: center)
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
