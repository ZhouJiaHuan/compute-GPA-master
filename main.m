% 主函数：测试用代码
% copyright - Meringue
% date - 2017/9/6
clc
clear all
close all
% 读取课程成绩信息
[NUM,TXT,RAW] = xlsread('C:\Users\Jiahuan Zhou\Desktop\GPA_TC.xlsx');
% 获取课程名和课程学分
[course, credit] = get_course_credit(RAW);
% 获取学生信息
[id, name] = get_id_name(RAW);
% 计算绩点
[GPA,GPA_per_course] = compute_GPA(NUM,credit);
% 结果显示与保存
result = save_result(RAW, GPA,0);
disp(result);