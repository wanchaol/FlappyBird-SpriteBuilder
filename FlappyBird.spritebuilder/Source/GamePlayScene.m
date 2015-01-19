#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f) {
        //add a new obstacle
        [self addObstacle];
        
        //reset the timer
        timeSinceObstacle = 0.0f;
    }
    
    
    
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //touch the screen
    [character flap];
    
}



@end
