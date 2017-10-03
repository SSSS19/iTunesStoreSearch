//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Shehab Saqib on 25/02/2016.
//  Copyright © 2016 Shehab Saqib. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImageWithURL(_ url: URL) -> URLSessionDownloadTask {
        let session = URLSession.shared
        
        let downloadTask = session.downloadTask(with: url, completionHandler: {
            [weak self] url, response, error in
            
            if error == nil, let url = url,
                let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        if let strongSelf = self {
                            strongSelf.image = image
                    }
                }
            }
        })
        downloadTask.resume()
        return downloadTask
    }
}
