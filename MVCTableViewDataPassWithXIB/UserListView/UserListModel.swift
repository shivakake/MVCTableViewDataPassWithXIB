//
//  UserListModel.swift
//  MVCTableViewDataPassWithXIB
//
//  Created by PGK Shiva Kumar on 06/08/21.
//

import Foundation

class UserListModel{
    
    var userListData : [UserStructure] = []
    
    func getUserList(){
        userListData = [UserStructure(name: "PGK Shiva Kumar", mobile: 9052998993, image: "Image_01"),
                    UserStructure(name: "P Sai Kiran", mobile: 8885869630, image: "Image_02"),
                    UserStructure(name: "R Prashanth", mobile: 7013529782, image: "Image_03"),
                    UserStructure(name: "P Ajay", mobile: 7560986936, image: "Image_04"),
                    UserStructure(name: "Bhanu Prakash", mobile: 8985801925, image: "Image_05")]
    }
}

struct UserStructure {
    var name : String
    var mobile : Int
    var image : String
}
