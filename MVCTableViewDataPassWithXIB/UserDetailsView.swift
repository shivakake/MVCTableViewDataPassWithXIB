//
//  UserDetailsView.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import Foundation
import UIKit

protocol UserDetailsViewDelegate {
    func goToBack()
}

class UserDetailsView: UIView {
    
    @IBOutlet weak var userImage : UIImageView!
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var userMobile : UILabel!
    
    var userDataList : UserStructure?
    var delegate : UserDetailsViewDelegate?
    
    func configureUI(){
        userImage.image = UIImage(named: userDataList?.image ?? "")
        userName.text = userDataList?.name
        userMobile.text = String(userDataList?.mobile ?? 0)
    }
    
    @IBAction func backButtonTapped(){
        delegate?.goToBack()
    }
    
}
