function [GPA,GPA_per_course] = compute_GPA(NUM,credit)
% Function:
% 计算所有学生的平均绩点（加权平均）
% Input
% NUM: (m,n)，double型，存放所有m个学生的所有n门课程成绩，每一行对应一个学生的成绩
%     score_11 | score_12 | score13 | --- | score_1n |
%     score_21 | score_22 | score23 | --- | score_2n |
%     ******** | ******** | ******* | --- | ******** |
%     score_m1 | score_m2 | scorem3 | --- | score_mn |
% credit: (1,n)，double型，存放所有课程的学分
% Output
% GPA: (m,1),double类型，存放所有学生的平均绩点
% GPA_per_course: (m,n),double类型，存放所有学生所有课程的的绩点

scores = NUM;
GPA_per_course = (scores-50)/10;
GPA_per_course(GPA_per_course<0) = 0;
GPA = GPA_per_course*credit'/sum(credit);
