//
//  ViewController.m
//  DragonFashion
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "RootViewController.h"
#import "Dragon.h"

@interface RootViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Dragon *smaug = [[Dragon alloc] initWithName:@"Smaug" clothingItem:@"High heels"];
    Dragon *puff = [[Dragon alloc] initWithName:@"Puff the Magic Dragon" clothingItem:@"scarf"];
    Dragon *charizard = [[Dragon alloc] initWithName:@"Charizard" clothingItem:@"ring"];
    Dragon *norbert = [[Dragon alloc] initWithName:@"Norbert" clothingItem:@"cigar"];
    Dragon *toothless = [[Dragon alloc] initWithName:@"Toothless" clothingItem:@"saddle"];
    self.dragons = [NSMutableArray arrayWithObjects:smaug, puff, charizard, norbert, toothless, nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellID"];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}
@end
