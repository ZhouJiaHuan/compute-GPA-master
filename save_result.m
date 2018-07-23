function sorted_result = save_result(RAW, GPA,write_to_xls)
% Function:
% 对绩点按降序排序并保存
% Input
% RAW: 课程成绩表，第一行为表头，前两列分别为学号和姓名，成绩从第三列开始；
%    学号|姓名|课程1/必修课/学分|课程2/必修课/学分|
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
%     ** | ** |         **     |         **     |
% GPA: (m,1),double类型，绩点
% write_to_xls:0或1，表示是否导出xls文件
% Output
% sorted_result: cell类型，排序结果,[排名,学号,姓名,绩点]

[id, name] = get_id_name(RAW);
num_stu = length(name);
rank = 1:num_stu; rank = rank';
name_sorted = null(num_stu,1);
id_sorted = null(num_stu,1);

[GPA_sorted,Index] = sort(GPA,'descend');
for i  = 1:num_stu
    id_sorted{i,1} = id{Index(i)};
    name_sorted{i,1} = name{Index(i)};
end
title = {'排名', '学号','姓名', '绩点'};
sorted_result = [title;
                 num2cell(rank),id_sorted,name_sorted,num2cell(GPA_sorted)];
% 导出结果到表格中
if write_to_xls == 1
    xlswrite('sorted_GPA_result.xls',sorted_result);
end

    


    






