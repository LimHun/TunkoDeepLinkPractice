//
//  Coffee.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct Coffee: Identifiable {
    var id : String
    var title : String
    var description: String
    var productImage: String
    var productPrice: String
}

var coffees: [Coffee] = [
    Coffee(id: "COFFB11", title: "블랙커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB12", title: "코딩커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB13", title: "라떼커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB14", title: "식후땡커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB15", title: "공부커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB16", title: "커피랩커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB17", title: "아아커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
    Coffee(id: "COFFB18", title: "드립커피", description: "블랙커피입니다. 써요", productImage: "coffee", productPrice: "$10"),
]
