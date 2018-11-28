//
//  ViewController.m
//  property
//
//  Created by mob on 2018/7/24.
//  Copyright © 2018年 mob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) NSMutableString *strongMStr;
@property(nonatomic,weak) NSMutableString *weakMStr;
@property(nonatomic, retain) NSMutableString *retainMStr;
@property(nonatomic, copy) NSMutableString *copyddMStr;
@property(nonatomic, assign) NSMutableString *assignMStr;


@property(copy,nonatomic)NSString*aCopyStr;
@property(strong,nonatomic)NSString*strongStr;
@property(weak,nonatomic)NSString*weakStr;
@property(assign,nonatomic)NSString*assignStr;

@property(nonatomic, copy)NSMutableArray *mutableArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *tempMStr = [[NSMutableString alloc] initWithString:@"strValue"];
    NSString*strOrigin = [[NSString alloc]initWithUTF8String:"strOrigin0123456"];
    
    self.aCopyStr= strOrigin;
    
    self.strongStr= strOrigin;
    
    self.weakStr= strOrigin;
    
    self.assignStr = strOrigin;
    
    
    
//    NSLog(@"strOrigin输出:%p,%@\\n", strOrigin,strOrigin);
//
//    NSLog(@"aCopyStr输出:%p,%@\\n",_aCopyStr,_aCopyStr);
//
//    NSLog(@"strongStr输出:%p,%@\\n",_strongStr,_strongStr);
//
//    NSLog(@"weakStr输出:%p,%@\\n",_weakStr,_weakStr);
//
//    NSLog(@"assignStr :%p,%@ \n",_assignStr,_assignStr);
//
//    strOrigin =@"aaa";
//
//    NSLog(@"strOrigin输出:%p,%@\\n", strOrigin,strOrigin);
//
//    NSLog(@"aCopyStr输出:%p,%@\\n",_aCopyStr,_aCopyStr);
//
//    NSLog(@"strongStr输出:%p,%@\\n",_strongStr,_strongStr);
//
//    NSLog(@"weakStr输出:%p,%@\\n",_weakStr,_weakStr);
//
//    NSLog(@"assignStr :%p,%@ \n",_assignStr,_assignStr);
//
//    self.aCopyStr=nil;
//
//    self.strongStr=nil;
//
//    NSLog(@"strOrigin输出:%p,%@\\n", strOrigin,strOrigin);
//
//    NSLog(@"aCopyStr输出:%p,%@\\n",_aCopyStr,_aCopyStr);
//
//    NSLog(@"strongStr输出:%p,%@\\n",_strongStr,_strongStr);
//    NSLog(@"strOrigin 引用计数器：%@",[strOrigin valueForKey:@"retainCount"]);
//    NSLog(@"weakStr输出:%p,%@\\n",_weakStr,_weakStr);
//    NSLog(@"assignStr :%p,%@ \n",_assignStr,_assignStr);
//
//    NSLog(@"------------------结论------------------------");
//
//    NSLog(@"当只有weakStr拥有C时，值依旧会被释放，同非容器可变变量");
    
    
    
    //    NSMutableString   可变非容量
//    NSLog(@"tempMStr值地址：%p,tempMStr值%@,tempMStr值引用计数器%@\n", tempMStr,tempMStr,[tempMStr valueForKey:@"retainCount"]);
//    self.strongMStr = tempMStr;
//    self.weakMStr = tempMStr;
//    self.retainMStr = tempMStr;
//    self.copyddMStr = tempMStr;
//    self.assignMStr = tempMStr;
//    [tempMStr appendString:@"1111"];
//    NSLog(@"tempMStr值地址：%p,tempMStr值%@,tempMStr值引用计数器%@\n", tempMStr,tempMStr,[tempMStr valueForKey:@"retainCount"]);
//    NSLog(@"strongMStr 地址：%p, strongMStr 值:%@, strongMStr值引用计数器%@\n", _strongMStr,_strongMStr,[_strongMStr valueForKey:@"retainCount"]);
//    NSLog(@"weakMStr 地址：%p, weakMStr 值:%@, weakMStr值引用计数器%@\n", _weakMStr,_weakMStr,[_weakMStr valueForKey:@"retainCount"]);
//    NSLog(@"retainMStr 地址：%p, retainMStr 值:%@, retainMStr值引用计数器%@\n", _retainMStr,_retainMStr,[_retainMStr valueForKey:@"retainCount"]);
//    NSLog(@"copyddMStr 地址：%p, copyddMStr 值:%@, copyddMStr值引用计数器%@\n", _copyddMStr,_copyddMStr,[_copyddMStr valueForKey:@"retainCount"]);
//     NSLog(@"assignMStr 地址：%p, assignMStr 值:%@, assignMStr值引用计数器%@\n", _assignMStr,_assignMStr,[_assignMStr valueForKey:@"retainCount"]);
    
#pragma mark ---------- copy 与 mutableCopy
    NSString *str1 = @"str1";
    NSString *str2 = [str1 copy];
    NSString *mutableCopyStr = [str1 mutableCopy];
    NSString *retainStr = [str1 retain];
    str1 = @"haha";
    NSLog(@"\nstr1 = %@, str1p = %p,\nstr2 = %@,str2 = %p",str1,str1,str2,str2);
    NSLog(@"\n mutableCopyStr = %@, muableCopyStr = %p",mutableCopyStr,mutableCopyStr);
    NSLog(@"\n retainStr = %@, retainStr = %p",retainStr,retainStr);
    
    
     [_mutableArr addObject:@"100"];
    
    NSArray *arr = @[@"123", @"456", @"789"];
    NSMutableArray *arr1 = [arr mutableCopy];
    NSMutableArray *marr2 = [arr copy];
    [arr1 addObject:@"111"];
//    [marr2 addObject:@"222"];
    [_mutableArr addObject:@"100"];
    NSLog(@"\n marr2 = %p,\narr1 = %p,\narr = %p",marr2,arr1,arr);
    NSLog(@"\n mutableArr = %p, self.mutableArr = %p,self.mutableArr class = %@",arr,self.mutableArr,[self.mutableArr class]);
    
    NSMutableDictionary *dic1 = [NSMutableDictionary new];
    NSMutableDictionary *dic2 = [dic1 copy];
    NSLog(@"dic1:%p  ------\n dic2: %p",dic1,dic2);
//    [dic2 setObject:@"hh" forKey:@"hhh"];    会报错的，copy赋值后 dic2 为不可变字典
    NSDictionary *dic3 = [NSDictionary dictionaryWithObjectsAndKeys:@"object1",@"key1", nil];
    NSDictionary *dic4 = [dic3 copy];
    NSMutableDictionary *dic5 = [dic3 mutableCopy];
    NSLog(@"dic3:%p -\ndic4:%p - \ndic5:%p",dic3,dic4,dic5);
    NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] initWithDictionary:dic3 copyItems:YES];  //完全拷贝， 字典中的元素也拷贝过去了
    
    NSLog(@"dic 3 = %@,p : %p,\ndic6 = %@, p : %p",dic3,dic3,dic6,dic6);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
