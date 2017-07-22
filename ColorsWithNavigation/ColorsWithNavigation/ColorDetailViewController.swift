//
//  ColorDetailViewController.swift
//  ColorsWithNavigation
//
//  Created by Cole Hayden on 7/21/17.
//  Copyright © 2017 Cole Hayden. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: Color?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorName_label.text = color?.name
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var colorName_label: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination = segue.destination as? ColorDetailViewController{
            destination.color = tableView.
        }
    }

}
