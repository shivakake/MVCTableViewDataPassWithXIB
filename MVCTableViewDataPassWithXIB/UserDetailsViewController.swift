//
//  UserDetailsViewController.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import UIKit

class UserDetailsViewController: UIViewController {
    
    @IBOutlet weak var userDetailsViewOutlet : UserDetailsView!
    
    var userDetailsModel : UserDetailsModel = UserDetailsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        let data = userDetailsModel.userDetailsDataList
        userDetailsViewOutlet.userDataList = data
        userDetailsViewOutlet.configureUI()
        userDetailsViewOutlet.delegate = self
    }
}
extension UserDetailsViewController : UserDetailsViewDelegate{
    func goToBack() {
        navigationController?.popViewController(animated: true)
    }
}
