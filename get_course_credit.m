function [course, credit] = get_course_credit(RAW)
% Function:
% 读取表格数据中学生信息（包括学号和姓名）
% Input
% RAW: 课程成绩表，第一行为表头，前两列分别为学号和姓名，成绩从第三列开始；
%    学号|姓名|课程1/必修课/学分1|课程2/必修课/学分2|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% course: (1,n),cell类型，存放所有的课程名(n门课程)
% credit: (1,n),double类型数组，存放所有课程对应的学分

num_course = size(RAW,2)-2; % 不包含前两列（学号、姓名）
course = null(num_course);
credit = null(num_course);
for i = 1:num_course
   course_name_credit = RAW{1,i+2}; %课程/必修课/学分
   course_credit = regexp(course_name_credit,'/','split'); %切分
   course{i} = course_credit{1}; % 课程名
   credit(i) = str2double(course_credit(end)); % 学分
end


