//
//  ViewController.swift
//  ArtShop
//
//  Created by Axel Whitford on 4/10/19.
//  Copyright © 2019 Axel Whitford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let storyboard = UIStoryboard(name:Storyboard.LoginStoryboard, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: StoryboardID.LoginStoryboardID)
        present(controller, animated: true, completion: nil)
    }


}

