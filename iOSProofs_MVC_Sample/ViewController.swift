//
//  ViewController.swift
//  iOSProofs_MVC_Sample
//
//  Created by Nikhil Balne on 25/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentsTableView: UITableView!
    
    var students : [Student] = []
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let newStudent = Student(aName: "Student \(students.count + 1)", aAddress: "Address \(students.count + 1)")
        students.append(newStudent)
        studentsTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentObject = students[indexPath.row]
        let cell : CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.nameLabel.text = studentObject.name
        cell.addressLabel.text = studentObject.address
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 126
    }
}
