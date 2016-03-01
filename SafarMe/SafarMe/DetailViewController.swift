//
//  DetailViewController.swift
//  SafarMe
//
//  Created by jhampac on 2/28/16.
//  Copyright © 2016 jhampac. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView()
    {
        // Update the user interface for the detail item.
        if let detail = self.detailItem
        {
            if let label = self.detailDescriptionLabel
            {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
}