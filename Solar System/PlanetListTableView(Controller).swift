//
//  PlanetListTableView(Controller).swift
//  Solar System
//
//  Created by Michael Castillo on 1/31/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

class PlanetListTableView_Controller_: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        return cell
    }
 

    
    // MARK: - Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return tableView.indexPathForSelectedRow != nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? PlanetListDetailViewController, let selectedIndex = tableView.indexPathForSelectedRow else { return }
            let planet = PlanetController.planets[selectedIndex.row]
            detailVC.planet = planet
            }
    
}
