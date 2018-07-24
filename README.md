# compute-GPA-master
compute GPA with MATLAB GUI, more details can be found at: https://zhoujiahuan.github.io/2018/07/23/matlab-gui-gpa/

# 计算学生课程成绩绩点并排名

copyright - Meringue

date - 2017/9/6

----------------------------------------------------------
## 方法1 代码计算（便于学习）
 - main.m：测试用代码 

 - get_id_name.m：读取表格数据中的学生信息（包括学号和姓名）

 - get_course_credit.m：读取表格数据中学生信息（包括学号和姓名）

 - compute_GPA.m：计算基点

 - save_result.m：打印并保存绩点和排名信息

使用方法，运行main.m文件

---------------------------------------------------------
## 方法2 GUI界面快速计算（便于快速应用）
 - compute_GPA_GUI.m
 - compute_GPA_GUI.fig

使用方法：直接运行compute_GPA_GUI.m即可。


## 使用注意事项 
 - 表格为.xls或者xlsx格式，务必保证表格内容为以下格式：
   |学号|姓名|课程1/必修课/学分|课程2/必修课/学分|
   | ** | ** |         **      |         **      |
   | ** | ** |         **      |         **      |
   | ** | ** |         **      |         **      |
   
 - 表格中的学号务必为文本型（可在学号前加单引号实现，如：'1501140106），数值型会导致计算出错！
 - 表格中成绩务必为数值型数据，文本型数据会导致计算失败！
