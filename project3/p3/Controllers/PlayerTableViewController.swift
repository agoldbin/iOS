//
//  PlayerTableViewController.swift
//  iOSProject3
//
//  Created by Aaron Goldbin on 11/20/18.
//  Copyright © 2018 bryan witkowski. All rights reserved.
//

import UIKit

class PlayerTableViewController: UITableViewController {
    var roster: [Player]? = []
    
    @IBOutlet weak var playerTable: UITableView!
    
    func loadJson(filename fileName: String) -> [Player]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Player].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func savePlayers() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add players to array for ease of programming
        if let players = loadJson(filename: "brewersRoster") {
            for player in players {
                roster?.append(player)
            }
        }
        roster = roster?.sorted(by: {$0.Number < $1.Number})
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (roster?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath)
        
        cell.textLabel?.text = roster![indexPath.row].Name
        cell.detailTextLabel?.text = roster![indexPath.row].Position

        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            if var roster = self.roster {
                self.roster!.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }

        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! PlayerDetailViewController
        if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) {
            if let roster = self.roster {
                dest.playerDetails = roster[indexPath.row]
            }
        }

    }
}
