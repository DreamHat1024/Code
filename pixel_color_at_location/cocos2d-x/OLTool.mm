//
//  OLTool.cpp
//  OneLine
//
//  Created by LiuYanghui on 14-6-4.
//
//

#include "OLTool.h"
#import "OLIOSTool.h"

Color4B OLTool::getPixelColorAtLocation(Vec2 point, const char* imageName)
{
    Image * image = new Image();
    image->initWithImageFile(imageName);
    Color4B color = getPixelColorAtLocation(point, image);
    image->release();
    return color;
}

Color4B OLTool::getPixelColorAtLocation(Vec2 point, Image *image)
{
    Color4B c = Color4B(0, 0, 0, 0);
    
    unsigned char *imageData = image->getData();
    unsigned int *pixel = (unsigned int *)imageData;
    unsigned int x = point.x;
    unsigned int y = image->getHeight() - point.y;
    pixel = pixel + (y * image->getWidth()) + x;
    c.r = *pixel & 0xff;
    c.g = (*pixel >> 8) & 0xff;
    c.b = (*pixel >> 16) & 0xff;
    c.a = (*pixel >> 24) & 0xff;
    
    
    
    return c;
}

bool OLTool::isSamePixelColorAtLocation(Color4B color, Vec2 point, const char* imageName)
{
    return color == getPixelColorAtLocation(point, imageName);
}

bool OLTool::isSamePixelColorAtLocation(Color4B color, Vec2 point, Image *image)
{
    return color == getPixelColorAtLocation(point, image);
}