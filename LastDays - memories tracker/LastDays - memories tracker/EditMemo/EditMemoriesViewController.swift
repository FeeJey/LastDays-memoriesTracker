//
//  Edit memories.swift
//  LastDays - memories tracker
//
//  Created by Firdavs Juraev on 04/04/24.
//

import UIKit

class EditMemoriesViewController: UIViewController {
    
    static let identifier = "EditNoteViewController"
    
    var note: Note!
    weak var delegate: ListNotesDelegate?

    @IBOutlet weak private var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = note?.text
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textView.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK:- Methods to implement
    private func updateNote() {
        // TODO update the note in database
        print("Updating note")
        
        note.lastUpdated = Date()
        delegate?.refreshNotes()
    }
    
    private func deleteNote() {
        // TODO delete the note from database
        print("Deleting note")
        
        delegate?.deleteNote(with: note.id)
    }
}

// MARK:- UITextView Delegate
extension EditMemoriesViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        note?.text = textView.text
        if note?.title.isEmpty ?? true {
            deleteNote()
        } else {
            updateNote()
        }
    }
}

