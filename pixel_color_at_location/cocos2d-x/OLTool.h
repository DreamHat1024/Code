//
//  OLTool.h
//  OneLine
//
//  Created by LiuYanghui on 14-6-4.
//
//

#ifndef __OneLine__OLTool__
#define __OneLine__OLTool__

#include "cocos2d.h"
USING_NS_CC;

class OLTool {
public:
    static Color4B getPixelColorAtLocation(Vec2 point, const char* imageName);
    static Color4B getPixelColorAtLocation(Vec2 point, Image *image);
    static bool isSamePixelColorAtLocation(Color4B color, Vec2 point, const char* imageName);
    static bool isSamePixelColorAtLocation(Color4B color, Vec2 point, Image *image);
};

#endif /* defined(__OneLine__OLTool__) */
