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
    
    var emojis = ["😎","🐰","🍒","🎥","💙","#️⃣"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("STARTING")
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
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
        performSegue(withIdentifier: "moveSegue", sender: "📡")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

