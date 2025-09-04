//
//  ContactUSViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 12.09.25.
//

import Foundation
import SwiftUI

class ContactUSViewModel: ObservableObject{
    @Environment(\.openURL) var openURL
    
    func openFacebook() {
        let appURL = URL(
            string: "https://www.facebook.com/share/1EbB7jonAM/?mibextid=wwXIfr"
        )!
        let webURL = URL(
            string: "https://www.facebook.com/Rafael.Dicaprio?locale=tr_TR")!
        
        if UIApplication.shared.canOpenURL(appURL) {
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
    
    func openInstagram(){
        let appURL = URL(
            string: "https://www.instagram.com/r.a_rus?igsh=MTRsZzE2YmU4YWdqMw%3D%3D&utm_source=qr "
        )!
        let webURL = URL(
            string: "https://www.instagram.com/r.a_rus/"
        )!
        if UIApplication.shared.canOpenURL(appURL){
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        }else{
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
    
    func openLinkedin(){
        let appURL = URL(
            string: "https://www.linkedin.com/in/rafaelagayev?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"
        )!
        let webURL = URL(
            string: "https://www.linkedin.com/in/rafaelagayev/"
        )!
        if UIApplication.shared.canOpenURL((appURL)){
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
            
        }else{
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
    
    func openX(){
        let appURL = URL(
            string:
               "https://x.com/rafaelagayev6?s=11"
        )!
        let webURL = URL(
            string: "https://x.com/RafaelAgayev6")!
        
        if UIApplication.shared.canOpenURL(appURL) {
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
    
    func openReddit(){
        let appURL = URL(
            string: "https://www.reddit.com/u/Rafael_202/s/aJBaxfTRSj"
        )!
        let webURL = URL(
            string: "https://www.reddit.com/user/Rafael_202/"
        )!
        
        if UIApplication.shared.canOpenURL(appURL){
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
            
        }else{
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
    }
}
