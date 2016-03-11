//
//  ViewController.m
//  iOSUtilForDev
//
//  Created by caiyidong on 3/8/16.
//  Copyright © 2016 caiyidong. All rights reserved.
//

#import "ViewController.h"
#import "BMKMapView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BMKMapView* mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.view = mapView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
