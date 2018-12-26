//
//  CommandsModel.swift
//  MyTracker MessagesExtension
//
//  Created by Vitalii Obertynskyi on 6/1/18.
//  Copyright © 2018 miraving. All rights reserved.
//

import Foundation

class Command {
    var name = ""
    var cmd = ""
    
    init(name: String, cmd: String) {
        self.name = name
        self.cmd = cmd
    }
}

class DataStore {
    
    static private let password = "123456"
    
    static func getAllCommand() -> [Command] {
        
        var result = [Command]()
        
        //http://forum.ablegrid.com/posts/t1027-TK-series-SMS-commands
        result.append(Command(name: "Status", cmd: "G"))
        result.append(Command(name: "GPS", cmd: "smslink"))
        result.append(Command(name: "Switch to monitor", cmd: "monitor"))
        result.append(Command(name: "Switch to tracker", cmd: "tracker"))
        result.append(Command(name: "Shock sensor check", cmd: "shock"))
        result.append(Command(name: "Cancel the shock sensor alarm", cmd: "noshock"))
        result.append(Command(name: "State Checking", cmd: "check"))
        result.append(Command(name: "IMEI checking", cmd: "imei"))
        
        result.forEach { item in
            item.cmd.append(DataStore.password)
        }
        
        return result
    }
}
