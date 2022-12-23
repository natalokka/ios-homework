//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Наталия Куракова on 22.12.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var myView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView
        view.addSubview(myView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        myView.frame = CGRect(
            x: view.frame.origin.x,
            y: view.frame.origin.y,
            width: view.frame.width,
            height: view.frame.height
            )
    }
}
