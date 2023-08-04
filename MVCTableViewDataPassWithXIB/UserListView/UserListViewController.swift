//
//  UserListViewController.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import UIKit

class UserListViewController: UIViewController {
    
    @IBOutlet weak var userListViewOutlet : UserListView!
    var userModel : UserListModel = UserListModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        userModel.getUserList()
        let data = userModel.userListData
        userListViewOutlet.userListArray = data
        userListViewOutlet.setupUI()
        userListViewOutlet.configureUI()
        userListViewOutlet.updateUI()
        userListViewOutlet.delegate = self
    }
    
   
}

extension UserListViewController : UserListViewDelegate{
    func goToNext(data: UserStructure?) {
        if let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserDetailsViewController") as? UserDetailsViewController{
            controller.userDetailsModel.userDetailsDataList = data
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
