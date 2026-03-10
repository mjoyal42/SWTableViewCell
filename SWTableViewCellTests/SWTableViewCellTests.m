#import <XCTest/XCTest.h>
#import "SWTableViewCell.h"

@interface SWTableViewCellTests : XCTestCase
@property (nonatomic, strong) NSArray *rightButtons;
@property (nonatomic, strong) NSArray *leftButtons;
@end

@implementation SWTableViewCellTests

- (void)setUp {
    [super setUp];
    
    NSMutableArray *rightUtilityButtons = [NSMutableArray new];
    [rightUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:0.78f green:0.78f blue:0.8f alpha:1.0]
                                                title:@"More"];
    [rightUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:1.0f green:0.231f blue:0.188 alpha:1.0f]
                                                title:@"Delete"];
    
    self.rightButtons = rightUtilityButtons;
    
    NSMutableArray *leftUtilityButtons = [NSMutableArray new];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:0.07 green:0.75f blue:0.16f alpha:1.0]
                                                icon:[UIImage imageNamed:@"check.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:1.0f green:1.0f blue:0.35f alpha:1.0]
                                                icon:[UIImage imageNamed:@"clock.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:1.0f green:0.231f blue:0.188f alpha:1.0]
                                                icon:[UIImage imageNamed:@"cross.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:0.55f green:0.27f blue:0.07f alpha:1.0]
                                                icon:[UIImage imageNamed:@"list.png"]];
    
    self.leftButtons = leftUtilityButtons;
}

- (void)testInitWithCellStyleDefault {
    SWTableViewCell *cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    XCTAssertNotNil(cell);
}

- (void)testInitWithCellStyleSubtitle {
    SWTableViewCell *cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    XCTAssertNotNil(cell);
}

- (void)testShouldHaveTwoRightButtons {
    SWTableViewCell *cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    [cell setRightUtilityButtons:self.rightButtons WithButtonWidth:44.0f];
    [cell setLeftUtilityButtons:self.leftButtons WithButtonWidth:44.0f];
    
    XCTAssertEqual(cell.rightUtilityButtons.count, 2);
}

- (void)testShouldHaveFourLeftButtons {
    SWTableViewCell *cell = [[SWTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    [cell setRightUtilityButtons:self.rightButtons WithButtonWidth:44.0f];
    [cell setLeftUtilityButtons:self.leftButtons WithButtonWidth:44.0f];
    
    XCTAssertEqual(cell.leftUtilityButtons.count, 4);
}

@end
