//
//  ViewController.h
//  sevenwondersofdworld
//
//  Created by Student on 14/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>
@property(nonatomic,retain)MKMapView *map;


@property(nonatomic,retain)MKPointAnnotation *point1,*point2,*point3,*point4,*point5,*point6,*point7,*point8;
@property(nonatomic,retain)UIButton *btn1,*btn2,*btn3,*btn4,*btn5,*btn6,*btn7,*btn8;



@end

