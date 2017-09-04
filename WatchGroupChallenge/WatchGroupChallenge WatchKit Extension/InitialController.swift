//
//  InterfaceController.swift
//  WatchGroupChallenge WatchKit Extension
//
//  Created by Gabriel Rodrigues on 04/09/17.
//  Copyright © 2017 Gabriel Rodrigues. All rights reserved.
//

import WatchKit
import Foundation


class InitialController: WKInterfaceController {
    
    var people = ["Vollbrecht", "Gabriel", "Gustavo"]
    
    @IBOutlet var table: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        configureTable()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func configureTable(){
        table.setNumberOfRows(people.count, withRowType: "TableCell" )
        
        for i in 0...2{
            let row = table.rowController(at: i) as! TableCell
            row.rowName.setText(people[i])
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        
    }
    
    func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "personalScreenSegue"{
            print("tocou")
        }
    }
}
