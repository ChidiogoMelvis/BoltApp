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

struct SidebarItem {
    enum ItemType {
        case profileImage(ProfileImage)
        case journey(Journey)
        case payments(Payments)
        case  history(History)
        case promotions(Promotions)
        case support(Support)
        case about(About)
        case workRides(WorkRides)
    }
    
    let type: ItemType
}

let profileImageItem = SidebarItem(type: .profileImage(ProfileImage(profileImage: UIImage(named: "profileImage"), profileName: "Emelano", viewProfile: "View profile")))
let journeyItem = SidebarItem(type: .journey(Journey(journeyIcon: UIImage(named: "freeJourney"), journeyLabel: "Free journeys")))
let paymentsItem = SidebarItem(type: .payments(Payments(paymentsIcon: UIImage(named: "payments"), paymentsLabel: "Payments")))

let historyItem = SidebarItem(type: .history(History(historyIcon: UIImage(named: "history"),historyLabel: "History")))
let promotionsItem = SidebarItem(type: .promotions(Promotions(promotionsIcon: UIImage(named: "promotions") ,promotionsLabel: "promotions")))
let supportItem = SidebarItem(type: .support(Support(supportIcon: UIImage(named: "support") ,supportLabel: "support")))

let aboutItem = SidebarItem(type: .about(About(aboutIcon: UIImage(named: "about") ,aboutLabel: "About")))

let workRidesItem = SidebarItem(type: .workRides(WorkRides(workRidesIcon: UIImage(named: "workRides") ,workRidesLabel: "Work Rides")))

