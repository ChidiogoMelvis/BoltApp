//
//  ProfileModel.swift
//  BoltApp
//
//  Created by Mac on 15/08/2023.
//

import Foundation
import UIKit

struct ProfileImage {
    var profileImage: UIImage?
    var profileName: String
    var viewProfile: String
}


struct Journey {
    var journeyIcon: UIImage?
    var journeyLabel: String
}


struct Payments {
    var paymentsIcon: UIImage?
    var paymentsLabel: String
}


struct History {
    var historyIcon: UIImage?
    var historyLabel: String
}


struct Promotions {
    var promotionsIcon: UIImage?
    var promotionsLabel: String
}


struct Support {
    var supportIcon: UIImage?
    var supportLabel: String
}


struct About {
    var aboutIcon: UIImage?
    var aboutLabel: String
}


struct WorkRides {
    var workRidesIcon: UIImage?
    var workRidesLabel: String
}

var profileImageArray = [
   ProfileImage(profileImage: UIImage(named: "profileImage"), profileName: "Emelano", viewProfile: "View profile")
]

var journeyArray = [
   Journey(journeyIcon: UIImage(named: "freeJourney"), journeyLabel: "Free journeys")
]

var  paymentsArray = [
   Payments(paymentsIcon: UIImage(named: "payments"), paymentsLabel: "Payments")
]

var historyArray = [
   History(historyIcon: UIImage(named: "history"), historyLabel: "History")
]

var  promotionsArray = [
   Promotions(promotionsIcon: UIImage(named: "promotions"), promotionsLabel: "Promotions")
]

var supportArrat = [
   Support(supportIcon: UIImage(named: "support"), supportLabel: "Support")
]

var aboutArray = [
     About(aboutIcon: UIImage(named: "about"), aboutLabel: "About")

]

var workRidesArray = [
    WorkRides(workRidesIcon: UIImage(named: "workRides"), workRidesLabel: "Work Rides")
]

