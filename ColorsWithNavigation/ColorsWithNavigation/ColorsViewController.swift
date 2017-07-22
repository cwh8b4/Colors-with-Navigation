//
//  ColorsViewController.swift
//  ColorsWithNavigation
//
//  Created by Cole Hayden on 7/21/17.
//  Copyright © 2017 Cole Hayden. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var colorsTableView: UITableView!
    var colors = [Color(name: "red",uiColor: UIColor.red),
                 Color(name: "orange", uiColor: UIColor.orange),
                 Color(name: "yellow", uiColor: UIColor.yellow),
                Color(name: "red", uiColor: UIColor.red),
                Color(name: "blue", uiColor: UIColor.blue),
                Color(name: "green", uiColor: UIColor.green)]

    override func viewDidLoad() {
        super.viewDidLoad()

        
       colorsTableView.dataSource = self
        colorsTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
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
