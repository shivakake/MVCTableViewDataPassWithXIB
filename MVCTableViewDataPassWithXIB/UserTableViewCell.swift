//
//  UserTableViewCell.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import UIKit

protocol UserTableViewCellDelegate {
    func goToNext(data : UserStructure?)
}

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage : UIImageView!
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var userMobile : UILabel!
    
    var delegate : UserTableViewCellDelegate?
    var userData : UserStructure?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupUI(data : UserStructure){
        userData = data
        userImage.image = UIImage(named: data.image)
        userName.text = data.name
        userMobile.text = String(data.mobile)
        userImage.layer.cornerRadius = userImage.frame.size.height / 2
    }
    
    @IBAction func detailsButtonTapped(_ sender : UIButton){
        delegate?.goToNext(data: userData)
    }
}
