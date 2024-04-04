//
//  ListMemoriesTableViewCell.swift
//  LastDays - memories tracker
//
//  Created by Firdavs Juraev on 04/04/24.
//

import UIKit

class ListMemoriesTableViewCell: UITableViewCell {

    static let identifier = "ListNoteTableViewCell"
    
    @IBOutlet weak private var titleLbl: UILabel!
    @IBOutlet weak private var descriptionLbl: UILabel!
    
    func setup(note: Note) {
        titleLbl.text = note.title
        descriptionLbl.text = note.desc
    }
}
