//
//  CatTableViewController.swift
//  TableExample
//
//  Created by Seung Hyun Eun on 4/17/18.
//  Copyright © 2018 Sunny Eun. All rights reserved.
//

import UIKit

class CustomTipTableViewController: UITableViewController {
    
    var tipPercentage = [[String: Any]] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipPercentage.append ([
            "SERVICE TYPE": "Standard",
            "TIP PERCENTAGE": "15-20%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Below-Average",
            "TIP PERCENTAGE": "10%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Bar",
            "TIP PERCENTAGE": "10-15%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Cafe / Coffeehouse",
            "TIP PERCENTAGE": "10-15%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Spa Service",
            "TIP PERCENTAGE": "10-15%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Taxi",
            "TIP PERCENTAGE": "10-15%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Delivery",
            "TIP PERCENTAGE": "15-20%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Sit-down Restaurant",
            "TIP PERCENTAGE": "15-20%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Hair/Nail Salon",
            "TIP PERCENTAGE": "20-25%",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Door Attendant",
            "TIP PERCENTAGE": "$1-$2",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Coat Attendant",
            "TIP PERCENTAGE": "$1-$2",
            ])
        tipPercentage.append ([
            "SERVICE TYPE": "Valet Parking",
            "TIP PERCENTAGE": "$2-$5",
            ])
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tipPercentage.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdendifier = "CustomTipTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdendifier, for: indexPath) as? CustomTipTableViewCell else {
            fatalError("Cell is not of type CustomTipTableViewCell")
            // For Crush
        }
        
        let tip = tipPercentage[indexPath.row] // Which row are you trying to load. Number of the row.
        cell.serviceTypeLabel.text = tip["SERVICE TYPE"] as? String
        cell.tipPercentageLabel.text = tip["TIP PERCENTAGE"] as? String
        
        return cell
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

