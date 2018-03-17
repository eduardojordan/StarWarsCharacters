//
//  TableViewController.swift
//  StarWarsCharacters
//
//  Created by Eduardo on 17/3/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    var sampleData : [Dictionary<String, Any>] = [
    [
        "picture":  #imageLiteral(resourceName: "Luke.jpg"),
        "name": "Luke Skywalker"
    ],
    [
        "picture": #imageLiteral(resourceName: "Bb8.jpeg"),
        "name": "Bb8"
        ],
    [
        "picture": #imageLiteral(resourceName: "phasmas.jpeg"),
        "name": "Phasmas"
        ],
    [
        "picture": #imageLiteral(resourceName: "Obi-Wan-Kenobi.jpeg"),
        "name": "Obi-Wan Kenobi"
        ],
    [
        "picture": #imageLiteral(resourceName: "Leia.jpeg"),
        "name": "Princesa Leia"
        ],
    [
        "picture": #imageLiteral(resourceName: "Lando-Calrissian.jpeg"),
        "name": "Lando Calrissian"
        ],
    [
        "picture": #imageLiteral(resourceName: "kylo-ren.jpeg"),
        "name": "Kylo Ren"
        ],
    [
        "picture": #imageLiteral(resourceName: "Jabba-The-Hutt.jpeg"),
        "name": "Jabba"
        ],
    [
        "picture": #imageLiteral(resourceName: "Han-Solo.jpeg"),
        "name": "Han Solo"
        ],
    [
        "picture": #imageLiteral(resourceName: "General-Grievous.jpeg"),
        "name": "Gral. Grievous"
        ],
    [
        "picture": #imageLiteral(resourceName: "first-order-riot-control-stormtroopers.jpeg"),
        "name": "Stormtroopers"
        ],
    [
        "picture": #imageLiteral(resourceName: "finn-main.jpeg"),
        "name": "Finn Main"
        ],
    [
        "picture": #imageLiteral(resourceName: "Darth-Vader.jpeg"),
        "name": "Darth Vader"
        ],
    [
        "picture": #imageLiteral(resourceName: "Darth-Maul.jpeg"),
        "name": "Darth Maul"
        ],
    [
        "picture": #imageLiteral(resourceName: "chewie.jpeg"),
        "name": "Chewie"
        ],
    [
        "picture": #imageLiteral(resourceName: "C-3PO-See-Threepio.jpeg"),
        "name": "C-3PO"
        ],
    [
        "picture": #imageLiteral(resourceName: "Boba-Fett.jpeg"),
        "name": "Boba Fett"
        ],
    [
        "picture": #imageLiteral(resourceName: "r2-d2.jpeg"),
        "name": "R2-D2"
        ]
        
        
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let cellNib = UINib (nibName: "TableViewCell", bundle: nil)
        self.tableView.register(cellNib,forCellReuseIdentifier: "cell")   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sampleData.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        // Configure the cell...
        let character = sampleData[indexPath.row]
        cell.nameLabel.text = character["name"] as? String
        cell.characterImage.image = character["picture"] as? UIImage

        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 235.0
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
