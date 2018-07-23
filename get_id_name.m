function [id, name] = get_id_name(RAW)
% Function:
% 读取表格数据中的学生信息（包括学号和姓名）
% Input
% RAW: 课程成绩表，第一行为表头，前两列分别为学号和姓名，成绩从第三列开始；
%    学号|姓名|课程1/必修课/学分|课程2/必修课/学分|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% Output
% id: (1,m),cell类型，存放所有的学号(m个学生)
% name: cell类型，存放所有的姓名

num_stu = size(RAW,1)-1; % 不包含表头
id = null(num_stu);
name = null(num_stu);
for i = 1:num_stu
   id{i} = RAW{i+1,1}; % 学号
   name{i} = RAW{i+1,2}; % 姓名
end
id = id'; name = name';