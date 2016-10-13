//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by John Fiedler on 10/3/16.
//  Copyright © 2016 SlobberHound. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    @IBOutlet var emojiLabel: UILabel!

    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var birthyearLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        definitionLabel.text = "hello"
        if emoji == "😎" {
            definitionLabel.text = "dude, sunglasses!"
            categoryLabel.text = "category: Smiley"
            birthyearLabel.text = "2011"
        }
        if emoji == "🍒" {
            definitionLabel.text = "cherries, ready for popping"
            categoryLabel.text = "category: Fruit"
            birthyearLabel.text = "2012"
        }
        if emoji == "🎥" {
            definitionLabel.text = "let's film that popping!"
            categoryLabel.text = "category: Action"
            birthyearLabel.text = "2013"
        }
        if emoji == "💙" {
            definitionLabel.text = "but that would break my heart..."
            categoryLabel.text = "category: Feeling"
            birthyearLabel.text = "2014"
        }
        if emoji == "🐰" {
            definitionLabel.text = "a cute bunny...."
            categoryLabel.text = "category: Animal"
            birthyearLabel.text = ""
        }
        if emoji == "#️⃣" {
            definitionLabel.text = "#brokenheart"
            categoryLabel.text = "category: HashTag"
            birthyearLabel.text = "(nine months later)"        }
        //     var emojis = ["😎","🐰","🍒","🎥","💙","#️⃣"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
