//
//  ContactTVCell.swift
//  contactsApp
//
//  Created by Tia Lendor on 11/5/20.
//

import UIKit

class ContactTVCell: UITableViewCell {
    
    lazy var contactImage: UIImageView = {
        let contactImage = UIImageView()
        contactImage.image = UIImage(systemName: "person.circle")
        contactImage.backgroundColor = .black
        return contactImage
    }()
    
    lazy var firstNameTitle: UILabel = {
        let label = UILabel()
        label.text = "First Name"
        return label
    }()
    
    lazy var lastNameTitle: UILabel = {
       let label = UILabel()
        label.text = "Last Name"
        return label
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addViews()
        addConstraints()

    }
    
    private func addViews() {
        contentView.addSubview(contactImage)
        contentView.addSubview(firstNameTitle)
        contentView.addSubview(lastNameTitle)
    }
    
    private func addConstraints() {
        contactImageConstraint()
        firstNameTitleConstraint()
        lastNameTitleConstraint()
    }
    
    private func contactImageConstraint() {
        contactImage.translatesAutoresizingMaskIntoConstraints = false
        
        [contactImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
         contactImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
         contactImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -300),
//         trailing is prob excessive- start here if issue
         contactImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30)].forEach{$0.isActive = true}
    }
    
    private func firstNameTitleConstraint() {
        firstNameTitle.translatesAutoresizingMaskIntoConstraints = false
        [firstNameTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -10),
         firstNameTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 175),
         firstNameTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)].forEach{$0.isActive = true}
    }
    
    private func lastNameTitleConstraint() {
        lastNameTitle.translatesAutoresizingMaskIntoConstraints = false
        [lastNameTitle.topAnchor.constraint(equalTo: firstNameTitle.bottomAnchor, constant: -40),
         lastNameTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 175),
         lastNameTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)].forEach{$0.isActive = true}
    }
    

}
