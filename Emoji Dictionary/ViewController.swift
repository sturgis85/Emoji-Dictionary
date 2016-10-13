//
//  ViewController.swift
//  Emoji Dictionary
//  Created by John Fiedler on 9/22/16.
//  Copyright © 2016 SlobberHound. All rights reserved.
//
//  Last updates on 9/27/2016

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var dacooltableview: UITableView!
    
    var emojis = [Emoji()]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("STARTING")
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // answer number of rows (duh!)
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // answer what we want inside each row
        let cell = UITableViewCell() // 
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "Dude! Sunglasses!"
        emoji1.category = "Smiley"
        emoji1.birthYear = "2011"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍒"
        emoji2.definition = "Cherries, ready for popping."
        emoji2.category = "Action"
        emoji2.birthYear = "2012"
     
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🎥"
        emoji3.definition = "Let's film that!"
        emoji3.category = "Action"
        emoji3.birthYear = "2013"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💙"
        emoji4.definition = "But... that would break my heart..."
        emoji4.category = "Action"
        emoji4.birthYear = "2014"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "#️⃣"
        emoji5.definition = "#brokenheart"
        emoji5.category = "Hashtag"
        emoji5.birthYear = "(nine months later)"

        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
}



/*
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
 birthyearLabel.text = "(nine months later)"
 */


