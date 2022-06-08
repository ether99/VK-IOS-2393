//
//  MyFriendsController.swift
//  VK IOS 2393
//
//  Created by Роберт on 08.06.2022.
//

import UIKit

class MyFriendsController: UIViewController {
    
    
    @IBOutlet weak var receiverLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(catchMessage(_:)), name: Notification.Name("sendMessageAllGroups"), object: nil)
        
        
    }
    @objc func catchMessage(_ notification: Notification) {
        
        if let text = notification.object as? String {
            receiverLabel.text = text
            
        }
        
        
    }


}
