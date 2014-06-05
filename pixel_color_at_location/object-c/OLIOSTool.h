//
//  OLIOSTool.h
//  OneLine
//
//  Created by LiuYanghui on 14-6-4.
//
//

#import <Foundation/Foundation.h>

@interface OLIOSTool : NSObject

+ (UIColor*) getPixelColorAtLocation:(CGPoint)point inImageName:(NSString *)imageName;
+ (UIColor*) getPixelColorAtLocation:(CGPoint)point inImage:(UIImage *)image;
+ (CGContextRef) createARGBBitmapContextFromImage:(CGImageRef) inImage;

@end
