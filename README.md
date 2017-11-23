# DLKit
一站式工具库

DLKit : 一站式多功能工具库

    1. 一行代码搞定TableViewCell重用
       在cellForRowAtIndexPath方法中：
      
        //不带xib的UITableViewCell
        UITableViewCell *cell = GETCELL_NOXIB(UITableViewCell);
        cell.moedl = model;
        return cell;
    
        //带xib的UITableViewCell
        UITableViewCell *cell = GETCELL_HASXIB(UITableViewCell);
        cell.moedl = model;
        return cell;
    

    2. 便捷UI界面编写
    UIViewNew
    .dl_frame(CGRectMake(10, 99, 99, 99))
    .dl_backgroundColor([UIColor blackColor])
    .dl_addToView(self.view);
    
    UIButtonNew
    .dl_frame(CGRectMake(10, 290, 99, 99))
    .dl_title(@"按钮")
    .dl_backgroundImage(@"aaa")
    .dl_action(self, @selector(aaa))
    .dl_addToView(self.view);
   
   3. 其他各种方便有趣的功能 等你来发现
   
   
