//
//  ViewController.swift
//  ToDoList
//
//  Created by HESSAM on 3/1/1397 AP.
//  Copyright © 1397 HESSAM. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["This is Hessam Inanloo" , "This is Second Hessam Inanloo" , "This is Third Hessam Inanloo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    }
    
    
    




