//
//  NewsViewController+Array(Data).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit



extension NewsViewController {
    
    
func fillNews(){
    
    let newsOne = News(text: "сенсорный смартфон первого поколения iPhone, разработанный и продававшийся корпорацией Apple. Был представлен 9 января 2007 года. После нескольких месяцев слухов. Поступил в продажу в США 29 июня 2007 года. Вторым поколением стал iPhone 3G, был анонсирован 9 июня 2008 года", photo: UIImage(named: "Iphone2G")!)
    
   newsArray.append(newsOne)
    
   }
}
