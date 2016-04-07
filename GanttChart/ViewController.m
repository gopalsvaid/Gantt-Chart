//
//  ViewController.m
//  GanttChart
//
//  Created by Gopal.Vaid on 30/03/16.
//  Copyright © 2016 Gopal.Vaid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    int w=50;
    int h=40;
    int x=0;
    int y=0;
    int p=0;
    
    
    for(int i=0;i<3;i++){
        
        
        if(i==0){
            p=0;
        }else{
            p= p  + w;
        }
        
        UILabel *lable1=[[UILabel alloc]initWithFrame:CGRectMake(p, 0, w, h)];
        lable1.text= [NSString stringWithFormat:@"%d Mar",i];
        lable1.font=[UIFont systemFontOfSize:12];
        lable1.textAlignment=NSTextAlignmentCenter;
        lable1.backgroundColor=[UIColor lightGrayColor];
        [self.scrollView addSubview:lable1];
        
  
    
    for(int noTask=0;noTask<5;noTask++){
    
         x=0;
         y=45*(noTask+1);
        
    for(int m=0;m<=i;m++){
        
        if(m==0){
            x=0;
        }else{
            x= x  + w;
        }
        
        UILabel *lable2=[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
        lable2.textAlignment=NSTextAlignmentRight;
        lable2.backgroundColor=[UIColor orangeColor];
        [self.scrollView addSubview:lable2];
        
    }
          }
}
    
     self.scrollView.contentSize=CGSizeMake(self.scrollView.frame.size.width+50*47,200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
