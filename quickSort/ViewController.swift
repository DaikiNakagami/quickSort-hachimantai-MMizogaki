//
//  ViewController.swift
//  quickSort
//
//  Created by MMizogaki on 11/2/16.
//  Copyright © 2016 MMizogaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(quickSort([3, 1, 7, 9, 4, 2, 8]))
        print(quickSort(["goat", "arm", "toe", "dog", "bat"]))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func quickSort<T: Comparable>(_ array: [T]) -> [T] {
        if array.isEmpty {
            return array
        } else {
            let head = array[0]
            let body = array[1..<array.count]
            let left = quickSort(body.filter({$0 < head}))
            let right = quickSort(body.filter({$0 >= head}))
            return left + [head] + right
        }
    }
}

