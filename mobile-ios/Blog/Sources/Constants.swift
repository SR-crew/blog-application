//
//  Constants.swift
//  Blog
//
//  Created by Alisher Baigazin on 19.02.2023.
//

import Foundation

final class Constants {
    public static var stringsBundle: Bundle {
        guard let path = Bundle.main.path(forResource: "kk", ofType: "lproj"), let bundle = Bundle(path: path) else {
            fatalError("Can't find 'kk.lproj' bundle")
        }
        return bundle
    }
}
