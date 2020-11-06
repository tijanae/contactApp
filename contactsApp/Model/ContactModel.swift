//
//  ContactModel.swift
//  contactsApp
//
//  Created by Tia Lendor on 11/5/20.
//

struct ContactModel {
    let number: Int
    let firstName: String
    let lastName: String
    
    static func getContacts() -> [ContactModel] {
        //        hint1 - create empty array of contacts
        //        use for loop to iterate dictionary to access key and value
        let contactDict =  [03364152046: ("Christin", "Böttger"),
                            927525456: ("Joaquin", "Bravo"),
                            6868840334: ("David", "Edwards"),
                            07905753: ("Roope", "Mattila"),
                            27991860: ("Lærke", "Wist"),
                            957021797: ("Jonathan", "Diez"),
                            01768757320: ("Emily", "Long"),
                            0501439641: ("Noe", "Roussel"),
                            375351453: ("Justin", "Harris"),
                            3028950023: ("Ezra", "Lee"),
                            0478121870: ("Ninon", "Bernard"),
                            60749217: ("Helene", "Strange"),
                            7638623154: ("Estefânia", "Barros"),
                            2945132492: ("Gül", "Sinanoğlu"),
                            1963139555: ("George", "Miller"),
                            64513463: ("Cecilie", "Peterson"),
                            01539627648: ("Jared", "Mitchelle"),
                            0157693915: ("Valdelaine", "de Souza"),
                            07798852536: ("Kristin", "Tausch"),
                            00499228235: ("Marissa", "Rode"),
        ]
        var contacts = [ContactModel]()
        for (key, value) in contactDict {
            let contact = ContactModel(number: key, firstName: value.0, lastName: value.1)
            contacts.append(contact)
        }
        return contacts
    }
    
}





