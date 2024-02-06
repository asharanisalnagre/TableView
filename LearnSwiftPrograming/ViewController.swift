//
//  ViewController.swift
//  LearnSwiftPrograming
//
//  Created by asharani on 08/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var EmployeeTableView: UITableView!
    var employees = ["Asha", "Neha", "Abhishek", "Vani", "Mayur", "Tarun"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmployeeTableView.delegate = self
        EmployeeTableView.dataSource = self
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you selected one of the cell:")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = EmployeeTableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath)
        cell.textLabel?.text = employees[indexPath.row]
        return cell
    }
    
}
