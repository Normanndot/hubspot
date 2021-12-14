//
//  ViewController.swift
//  hubspot
//
//  Created by Norman, ThankaVijay on 06/12/21.
//

import UIKit

class ViewController: UIViewController {
    private var request: AnyObject?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchMessages()
    }

    func fetchMessages() {
        let messageRequest = APIRequest(resource: MessageGET())
        request = messageRequest
        messageRequest.load { [weak self] (questions: [HubspotChat]?) in
        }
    }
}


//8b21310bee2633ed1cc54735a92f
