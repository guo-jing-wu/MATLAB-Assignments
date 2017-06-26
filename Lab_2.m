fp = fopen('WeeklySummary.txt', 'wt');
for day = {'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'}
    x = rand*100;
    y = rand*100;
    if x == 0 && y == 0
        fprintf(fp, 'I didn''t get paid on %s, Sara didn''t get paid yesterday either on %s.\n', day{1}, day{1});
    elseif x == 0 && y>0
        fprintf(fp, 'I didn''t get paid on %s, Sara made %0.2f dollars on %s.\n', day{1}, y, day{1});
    elseif x > 0 && y == 0
        fprintf(fp, 'I made %0.2f dollars on %s, but Sara didn''t get paid on %s.\n', x, day{1}, day{1});
    elseif x > 0 && y > 0
        fprintf(fp, 'I made %0.2f dollars on %s, Sara made %0.2f dollars on %s.\n', x, day{1}, y, day{1});
    end
end
fclose(fp);

A = randi([10,20],100,100);
fp = fopen('data.txt', 'wt');
for i=1:size(A,1)
   fprintf(fp, '%d ', A(i,:));
   fprintf(fp, '\n');
end
fclose(fp);

matrix = load('data.txt');
numOfTen = 0;
numOfFifteen = 0;
numOfSeventeen = 0;
[row, col] = size(matrix);
for i = 1:row
    for j = 1:col
        if matrix(i, j) == 10
            numOfTen = numOfTen + 1;
        elseif matrix(i, j) == 15
            numOfFifteen = numOfFifteen + 1;
        else
            numOfSeventeen = numOfSeventeen + 1;
        end
    end
end
fprintf('The probability of choosing 10 is %.4f\r\n', numOfTen/10000);
fprintf('The probability of choosing 15 is %.4f\r\n', numOfFifteen/10000);
fprintf('The probability of choosing 17 is %.4f\r\n', numOfSeventeen/10000);