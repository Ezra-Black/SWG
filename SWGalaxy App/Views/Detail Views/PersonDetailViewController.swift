//
//  PersonDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    //MARK: Properties
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    
    @IBAction func printDataInPerson(_sender: UIButton) {
        print("The data inside of person that was passed to this viewcontroller from the segue function is as follows : \(String(describing: person))")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
