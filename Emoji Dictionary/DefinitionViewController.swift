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
    @IBOutlet var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        definitionLabel.text = "hello"
        if emoji == "😎" {
            definitionLabel.text = "dude, sunglasses!"
        }
        if emoji == "🍒" {
            definitionLabel.text = "cherries, ready for popping"
        }
        if emoji == "🎥" {
            definitionLabel.text = "let's film that popping!"
        }
        if emoji == "💙" {
            definitionLabel.text = "but that would break my heart..."
        }
        if emoji == "🐰" {
            definitionLabel.text = "a cute bunny...."
        }
        if emoji == "#️⃣" {
            definitionLabel.text = "#brokenheart"
        }
        //     var emojis = ["😎","🐰","🍒","🎥","💙","#️⃣"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
