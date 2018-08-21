//
//  ViewController.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 09/03/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ds = DataStore()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func fetchData(){
        ds.fetchAlbums { (result) in
            
        }
    }
}

