//
//  ViewController.swift
//  Recipes
//
//  Created by Sean Hornsby on 10/15/19.
//  Copyright © 2019 Sean Hornsby. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["first", "second", "third", "fourth"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "breads"))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell") as! UITableViewCell
        cell.textLabel?.text = array[indexPath.item]
        return cell
    }
}

