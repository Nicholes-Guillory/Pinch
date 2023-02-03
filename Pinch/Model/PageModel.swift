//
//  PageModel.swift
//  Pinch
//
//  Created by Nicholes Guillory on 12/16/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
