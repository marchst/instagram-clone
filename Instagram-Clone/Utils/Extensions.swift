//
//  Extensions.swift
//  Instagram-Clone
//
//  Created by Surapunya Thongdee on 23/10/2564 BE.
//

import SwiftUI
import UIKit
import Kingfisher

extension Image {
    func resizeTo(width: CGFloat, height: CGFloat) -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: width, height: height)
    }
}

extension KFImage {
    func resizeTo(width: CGFloat, height: CGFloat) -> some View {
        self.resizable()
            .scaledToFill()
            .frame(width: width, height: height)
    }
}

extension UIApplication {
    func endEditting() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
