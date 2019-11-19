//
//  ViewController.swift
//  TableViewIntroductionLab
//
//  Created by Benjamin Stone on 8/6/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    

    @IBOutlet weak var taskList: UITableView!
    
    private var tasks = Task.allTasks {
        didSet {
            taskList.reloadData()
        }
    }
    
    private var sortAscending = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskList.dataSource = self
        sortTasks(true)
    }
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy h:mm a"
      return formatter
    }()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskList.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath)
        let task = tasks[indexPath.row]
        cell.textLabel!.text = task.name
        cell.detailTextLabel!.text = dateFormatter.string(from: task.dueDate)
    
        return cell
    }

    @IBAction func UIButtonPressed(_ sender: UIBarButtonItem) {
       sortAscending.toggle()
        print()
        sortTasks(sortAscending)
        print("here")
    }
    
    func sortTasks(_ sortAscending: Bool) {
        if sortAscending {
            tasks = Task.allTasks.sorted { $0.name < $1.name }
            navigationItem.rightBarButtonItem?.title = "Sort Descending"
        } else {
            tasks = Task.allTasks.sorted { $0.name > $1.name }
            navigationItem.rightBarButtonItem?.title = "Sort Ascending"
        }
    }
}

