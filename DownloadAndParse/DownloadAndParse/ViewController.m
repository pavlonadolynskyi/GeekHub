//
//  ViewController.m
//  DownloadAndParse
//
//  Created by Pavlo Nadolinskyi on 10/22/13.
//  Copyright (c) 2013 Pavlo Nadolinskyi. All rights reserved.
//

#import "ViewController.h"
#import "GDataXMLNode.h"

@interface ViewController ()
@property (strong, nonatomic) GDataXMLDocument * doc;

@property (strong, nonatomic) NSArray * items;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL * requestURL = [NSURL URLWithString:@"http://mooncity.podfm.ru/rss/rss.xml"];
    NSURLRequest * request = [NSURLRequest requestWithURL:requestURL];
    
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request
                                                  returningResponse:&response
                                                              error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
    
//    NSString *responseString = [[NSString alloc] initWithData:responseData
//                                                     encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", responseString);
    
    self.doc = [[GDataXMLDocument alloc] initWithData:responseData
                                                           options:0 error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
    NSArray * nodes = [self.doc nodesForXPath:@"//channel/item" error:&error];
    _items = nodes;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    GDataXMLElement *item = _items[indexPath.row];
    NSArray *titles = [item elementsForName:@"title"];
        if (titles.count > 0) {
            GDataXMLElement * title = titles[0];
            cell.textLabel.text = title.stringValue;
        }
    return cell;
}

@end
