//
//  NewsViewController+(UITableViewDelegate, UITableDataSource).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit



extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierNews", for: indexPath) as? NewsTableViewCell else {return UITableViewCell()}
        cell.configure(news: newsArray[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
       
    }
   
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
       return cellHeightNews

   }
    
}
