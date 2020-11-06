//
//  MainTab.swift
//  contactsApp
//
//  Created by Tia Lendor on 11/5/20.
//

import UIKit

class MainTab: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contactVC = ContactVC()

        contactVC.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person.circle.fill"), tag: 0)
    }
    

    
}
