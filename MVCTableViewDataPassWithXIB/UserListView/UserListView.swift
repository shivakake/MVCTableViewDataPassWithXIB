//
//  UserListView.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import Foundation
import UIKit

protocol UserListViewDelegate {
    func goToNext(data : UserStructure?)
}

class UserListView: UIView {
    
    @IBOutlet weak var userListTVOutlet : UITableView!
    
    var userListArray : [UserStructure] = []
    var delegate : UserListViewDelegate?
    func setupUI(){
        userListTVOutlet.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
    }
    
    func configureUI(){
        userListTVOutlet.dataSource = self
        userListTVOutlet.delegate = self
    }
    
    func updateUI(){
        userListTVOutlet.reloadData()
    }
}
extension UserListView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = userListTVOutlet.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell{
            cell.setupUI(data: userListArray[indexPath.row])
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}

extension UserListView : UITableViewDelegate{}

extension UserListView : UserTableViewCellDelegate{
    func goToNext(data: UserStructure?) {
        delegate?.goToNext(data: data)
    }
}
