//
//  MasterViewController.swift
//  SafarMe
//
//  Created by jhampac on 2/28/16.
//  Copyright © 2016 jhampac. All rights reserved.
//

import UIKit
import SafariServices

typealias Projects = [(title: String, description: String)]

class MasterViewController: UITableViewController
{
    var projects: Projects = [
        (title: "Project 1: Storm Viewer", description: "Constants and variables, UITableView, UIImageView, NSFileManager, storyboards"),
        (title: "Project 2: Guess the Flag", description: "@2x and @3x images, asset catalogs, integers, doubles, floats, operators (+= and -=), UIButton, enums, CALayer, UIColor, random numbers, actions, string interpolation, UIAlertController"),
        (title: "Project 3: Social Media", description: "UIBarButtonItem, UIActivityViewController, the Social framework, NSURL"),
        (title: "Project 4: Easy Browser", description: "loadView(), WKWebView, delegation, classes and structs, NSURLRequest, UIToolbar, UIProgressView., key-value observing"),
        (title: "Project 5: Word Scramble", description: "NSString, closures, method return values, booleans, NSRange"),
        (title: "Project 6: Auto Layout", description: "Get to grips with Auto Layout using practical examples and code"),
        (title: "Project 1: Storm Viewer", description: "Constants and variables, UITableView, UIImageView, NSFileManager, storyboards"),
        (title: "Project 7: Whitehouse Petitions", description: "JSON, NSData, UITabBarController")
    ]

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
    }
    
    // MARK: - VC Methods
    
    func makeAttributedString(title title: String, subtitle: String) -> NSAttributedString
    {
        let titleAttributes = [NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline), NSForegroundColorAttributeName: UIColor.purpleColor()]
        let subtitleAttributes = [NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)]
        
        let titleString = NSMutableAttributedString(string: "\(title)\n", attributes: titleAttributes)
        let subtitleString = NSAttributedString(string: subtitle, attributes: subtitleAttributes)
        
        titleString.appendAttributedString(subtitleString)
        
        return titleString
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return projects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.attributedText = makeAttributedString(title: projects[indexPath.row].title, subtitle: projects[indexPath.row].description)
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
}

