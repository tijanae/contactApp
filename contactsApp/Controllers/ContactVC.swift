//
//  ContactVC.swift
//  contactsApp
//
//  Created by Tia Lendor on 11/5/20.
//

import UIKit

class ContactVC: UIViewController {
    
    //    MARK: DATA
    
    var contactData = [ContactModel]()
    
    private let contactView = ContactView()
    
    override func loadView() {
        view = contactView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        contactView.contactTableView.dataSource = self
        contactView.contactTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    private func loadData() {
        contactData = ContactModel.getContacts()
    }

   

}

extension ContactVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = contactData[indexPath.row]
        
        guard let contactCell = tableView.dequeueReusableCell(withIdentifier: "contactData", for: indexPath) as? ContactTVCell else{return UITableViewCell()}
        contactCell.firstNameTitle.text = data.firstName
        contactCell.lastNameTitle.text = data.lastName
        contactCell.contactImage.image = UIImage(systemName: "person.circle")
        
        return contactCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
