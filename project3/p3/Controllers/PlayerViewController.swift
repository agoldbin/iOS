//
//  ViewController.swift
//  jsonDecoding
//
//  Created by bryan witkowski on 10/30/18.
//  Copyright © 2018 bryan witkowski. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let players = loadJson(filename: "brewersRoster") {
            for player in players {
                print(player)
            }
        }
    }

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

}

