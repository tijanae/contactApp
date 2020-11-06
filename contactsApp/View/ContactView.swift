//
//  ContactView.swift
//  contactsApp
//
//  Created by Tia Lendor on 11/5/20.
//

import UIKit

class ContactView: UIView {
    
//    MARK: UIOBJECT
    
    lazy var contactTableView: UITableView = {
       let contact = UITableView()
        contact.register(ContactTVCell.self, forCellReuseIdentifier: "contactData")
        return contact
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contactTableConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//    MARK: Constraints
    
    private func contactTableConstraint() {
        addSubview(contactTableView)
        contactTableView.translatesAutoresizingMaskIntoConstraints = false
        
        [contactTableView.topAnchor.constraint(equalTo: topAnchor),
         contactTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
         contactTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
         contactTableView.bottomAnchor.constraint(equalTo: bottomAnchor)].forEach {$0.isActive = true}
    }



}
