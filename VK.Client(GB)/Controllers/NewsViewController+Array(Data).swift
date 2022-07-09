//
//  NewsViewController+Array(Data).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit



extension NewsViewController {
    
    
func fillNews(){
    
    let newsOne = News(title: "Iphone 2G", text:  "Cенсорный смартфон первого поколения iPhone. Был представлен 9 января 2007 года. Поступил в продажу в США 29 июня 2007 года.", photo: UIImage(named: "Iphone2G")!)
    
    let newsTwo = News(title: "Ipad", text:  "Планшет, выпускаемый компанией Apple. Первая версия планшета представлена на презентации в Сан-Франциско Стивом Джобсом 27 января 2010 года.", photo: UIImage(named: "Ipad")!)
    
    newsArray.append(newsOne)
    newsArray.append(newsTwo)
   
   }
}


