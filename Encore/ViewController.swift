//
//  ViewController.swift
//  Encore
//
//  Created by Jenny Guzdial on 7/29/19.
//  Copyright © 2019 Jenny Guzdial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    let words: [String] = ["Rain", "Men", "Glory", "Sky", "Wet", "Tonight", "Together", "Apart", "Dog", "Car"]
    var remainingWords = [String]()
    @IBOutlet weak var WordBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Actions

    @IBAction func WordButtonPress(_ sender: UIButton) {
        self.WordBox.text = self.GetNextWord()
        
    }
    func GetNextWord() -> String {
        debugPrint(remainingWords)
        if remainingWords.count == 0{
            remainingWords = words
        }
        let nextWord: String = remainingWords.randomElement() ?? "f"
        remainingWords.remove(at: remainingWords.firstIndex(of: nextWord)!)
        return nextWord
    }
}

