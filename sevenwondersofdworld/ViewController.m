//
//  ViewController.m
//  sevenwondersofdworld
//
//  Created by Student on 14/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@ end
@implementation ViewController
@synthesize btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8;
- (void)viewDidLoad {
    
    [super viewDidLoad];
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _map.mapType=MKMapTypeHybrid;
    _map.delegate=self;
    CLLocationCoordinate2D loc1,loc2,loc3,loc4,loc5,loc6,loc7,loc8;
    
    _point1=[[MKPointAnnotation alloc]init];
    _point1.title=@"Tajmahal";
    _point1.subtitle=@"India";
    loc1.latitude=27.1750;
    loc1.longitude=78.0422;
    _point1.coordinate=loc1;
    
    _point2=[[MKPointAnnotation alloc]init];
    _point2.title=@"Chichen Itza";
    _point2.subtitle=@"Mexico";
    loc2.latitude=88.5678;
    loc2.longitude=20.6843;
    _point2.coordinate=loc2;
    
    
    _point3=[[MKPointAnnotation alloc]init];
    _point3.title=@"Christ The Redeemer";
    _point3.subtitle=@"Brazil";
    loc3.latitude=43.2105;
    loc3.longitude=22.9519;
    _point3.coordinate=loc3;
    
    _point4=[[MKPointAnnotation alloc]init];
    _point4.title=@"Colosseum";
    _point4.subtitle=@"Italy";
    loc4.latitude=41.8902;
    loc4.longitude=12.4922;
    _point4.coordinate=loc4;
    
    
    _point5=[[MKPointAnnotation alloc]init];
    _point5.title=@"The Great Wall of China";
    _point5.subtitle=@"China";
    loc5.latitude=40.4319;
    loc5.longitude=116.5704;
    _point5.coordinate=loc5;
    
    _point6=[[MKPointAnnotation alloc]init];
    _point6.title=@"Machu Pichu";
    _point6.subtitle=@"Peru";
    loc6.latitude=13.1631;
    loc6.longitude=72.5450;
    _point6.coordinate=loc6;
    
    _point7=[[MKPointAnnotation alloc]init];
    _point7.title=@"Petra";
    _point7.subtitle=@"Jordan";
    loc7.latitude=30.3285;
    loc7.longitude=35.4444;
    _point7.coordinate=loc7;
   
    _point8=[[MKPointAnnotation alloc]init];
    _point8.title=@"The Great Pyramid of Giza";
    _point8.subtitle=@"Egypt";
    loc8.latitude=29.9792;
    loc8.longitude=31.1342;
    _point8.coordinate=loc8;

    [self.map addAnnotation:_point8];
    [self.map addAnnotation:_point7];
    [self.map addAnnotation:_point6];
    [self.map addAnnotation:_point5];
    [self.map addAnnotation:_point4];
    [self.map addAnnotation:_point3];
    [self.map addAnnotation:_point2];
    [self.map addAnnotation:_point1];
    
    [self.view addSubview:_map];
    
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]init];
    pin.canShowCallout=YES;
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    UIImageView *imgeview=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 40, 30)];
    
    if(annotation==_point1)
    {
        imgeview.image=[UIImage imageNamed:@"tajmahal"];
        btn1=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn1.frame=CGRectMake(60, 15, 20, 20);
        [view1 addSubview:btn1];
        [btn1 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    }
    else if (annotation==_point2)
    {
        imgeview.image=[UIImage imageNamed:@"Chichen Itza"];
        btn2=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn2.frame=CGRectMake(60, 15, 20, 20);
        [btn2 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn2];
    }
    else if (annotation==_point3)
    {
        imgeview.image=[UIImage imageNamed:@"Christ the Redeemer"];
        btn3=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn3.frame=CGRectMake(60, 15, 20, 20);
        [btn3 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn3];
    }
    else if (annotation==_point4)
    {
        imgeview.image=[UIImage imageNamed:@"Colosseum"];
        btn4=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn4.frame=CGRectMake(60, 15, 20, 20);
        [btn4 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn4];
    }
    else if (annotation==_point5)
    {
        imgeview.image=[UIImage imageNamed:@"Great Wall of China"];
        btn5=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn5.frame=CGRectMake(60, 15, 20, 20);
        [btn5 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn5];
    }
    else if(annotation==_point6)
    {
        imgeview.image=[UIImage imageNamed:@"Machu Picchu"];
        btn6=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn6.frame=CGRectMake(60, 15, 20, 20);
        [btn6 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn6];
    }
    else if (annotation==_point7)
    {
        imgeview.image=[UIImage imageNamed:@"Petra"];
        btn7=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn7.frame=CGRectMake(60, 15, 20, 20);
        [btn7 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn7];

    }
    else{
        imgeview.image=[UIImage imageNamed:@"Great Pyramid of Giza"];
        btn8=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn8.frame=CGRectMake(60, 15, 20, 20);
        [btn8 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn8];

    }
    [view1 addSubview:imgeview];
    //    UIButton *btn=[UIButton buttonWithType:UIButtonTypeInfoDark];
    //    btn.frame=CGRectMake(60, 15, 20, 20);
    //    [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    //    [view1 addSubview:btn];
    
    pin.rightCalloutAccessoryView=view1;
    
    return pin;
    
}

-(void)btnclick:(id)sender
{
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    ViewController2 *vc2=[storyboard instantiateViewControllerWithIdentifier:@"main2"];
    
    
    
    if(sender==btn1)
    {
        vc2.imgstr=@"tajmahal";
        vc2.descstr=@"An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage.";
        
     
        [self.navigationController pushViewController:vc2 animated:YES];
    }
    else if (sender==btn2)
    {
        vc2.imgstr=@"Christ the Redeemer";
        vc2.descstr=@"Christ the Redeemer (Portuguese: Cristo Redentor, standard Brazilian Portuguese: [ˈkɾistu ʁedẽˈtoʁ], local dialect: [ˈkɾiɕtŭ̻ xe̞dẽ̞ˈtoɦ]) is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by the Brazilian engineer Heitor da Silva Costa, in collaboration with the French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face. The statue is 30 metres (98 ft) tall, not including its 8-metre (26 ft) pedestal, and its arms stretch 28 metres (92 ft) wide.[1][2]";
        [self.navigationController pushViewController:vc2 animated:YES];
        
    }

    else if (sender==btn3)
    {
        vc2.imgstr=@"Chichen Itza";
        vc2.descstr=@"Chichén Itzá is a large Mayan city famous for a large, pyramid temple built by the Maya civilization. It is on the Yucatán Peninsula, about 120 km to the east of Mérida. The temple, called Castillo, is about 1 km in diameter.";

        [self.navigationController pushViewController:vc2 animated:YES];
        
    }
    else if (sender==btn4)
    {
        vc2.imgstr=@"Colosseum";
        vc2.descstr=@"The Colosseum's original Latin name was Amphitheatrum Flavium, often anglicized as Flavian Amphitheater. The building was constructed by emperors of the Flavian dynasty, following the reign of Nero. This name is still used in modern English, but generally the structure is better known as the Colosseum.eeeeeeeeefwefvvv vefefwefwfw";

        [self.navigationController pushViewController:vc2 animated:YES];
        
    }
    else if(sender==btn5)
    {
        vc2.imgstr=@"Great Wall of China";
        vc2.descstr=@"The Great Wall, one of the greatest wonders of the world, was listed as a World Heritage by UNESCO in 1987. Just like a gigantic dragon, it winds up and down across deserts, grasslands, mountains and plateaus, stretching approximately 13,170 miles (21,196 kilometers) from east to west of China.";
        [self.navigationController pushViewController:vc2 animated:YES];
        
        
    }else if (sender==btn6)
              {
                  vc2.imgstr=@"Machu Picchu";
                  vc2.descstr=@"It is located in the Cusco Region, Urubamba Province, Machupicchu District in Peru, above the Sacred Valley, which is 80 kilometres (50 mi) northwest of Cuzco and through which the Urubamba River flows. Most archaeologists believe that Machu Picchu was built as an estate for the Inca emperor Pachacuti (1438–1472).";
                  [self.navigationController pushViewController:vc2 animated:YES];

              }
    else if (sender==btn7)
    {
        vc2.imgstr=@"Petra";
        vc2.descstr=@"Petra (Arabic: البتراء, Al-Batrāʾ; Ancient Greek: Πέτρα), originally known to the Nabataeans as Raqmu, is a historical and archaeological city in southern Jordan. The city is famous for its rock-cut architecture and water conduit system.";
        [self.navigationController pushViewController:vc2 animated:YES];
    }
    else if (sender==btn8)
    {
        
        vc2.imgstr=@"Great Pyramid of Giza";
        vc2.descstr=@"The Great Pyramid of Giza is the oldest and largest of the three pyramids in the Giza pyramid complex bordering what is now El Giza, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.";
        [self.navigationController pushViewController:vc2 animated:YES];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


