//
//  Movie.swift
//  Fav Movies
//
//  Created by Derek Conway on 6/11/16.
//  Copyright © 2016 Derek Conway. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {
    
    var aux: String?
    
    func setAnImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getImage() -> UIImage {
        let img = UIImage(data: self.image!)
        return img!
    }
}
