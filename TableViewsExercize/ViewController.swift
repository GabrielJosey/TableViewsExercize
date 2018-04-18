//
//  ViewController.swift
//  TableViewsExercize
//
//  Created by Gabriel Josey on 4/16/18.
//  Copyright © 2018 Gabriel Josey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var data: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...1000 {
            data.append("\(i)")
        }
        
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        return cell
    }
    
}

