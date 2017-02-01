//
//  PlanetListDetailViewController.swift
//  Solar System
//
//  Created by Michael Castillo on 1/31/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

class PlanetListDetailViewController: UIViewController {
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    
    var planet: Planet?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }


    func updateViews() {
        guard let planet = planet else { return }
        title = planet.name
        imageLabel.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        dayLabel.text = "\(planet.dayLength)"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
    }
    
}
