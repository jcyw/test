-- **********************正则表达式************************
--  ##语法：
--       ^  :   开头 
--       $  :   结束
--       . :   匹配除换行符 \n 之外的任何单字符。要匹配 . ，请使用 \. 。
--       /s :   空格
--       /n :   换行
--       * :   匹配前面的子表达式零次或多次。例如，zo* 能匹配 "z" 以及 "zoo"。* 等价于{0,}。
--       + :   匹配前面的子表达式一次或多次。例如，'zo+' 能匹配 "zo" 以及 "zoo"，但不能匹配 "z"。+ 等价于 {1,}。
--       ? :   匹配前面的子表达式零次或一次。例如，"do(es)?" 可以匹配 "do" 、 "does" 中的 "does" 、 "doxy" 中的 "do" 。? 等价于 {0,1}

-- **************************示例**************************
    -- 1. ^function.*:test.*$   :   以function开头 ， 中间含有 :test 的整体一行 
    --         <======> ^function.*:test.{0,}$

    -- 2. 判断字符串是否是有空格组成
    -- local test = string.match("    ", "^[ ]*$") ---[[如果全是空格返回字符串，否则返回nil]]