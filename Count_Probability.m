matrix = load('data.txt');

numOfZero = 0; numOfOne = 0; numOfTwo = 0; numOfThree = 0; numOfFour = 0; numOfFive = 0;

[row col] = size(matrix);

for i = 1:row
    for j = 1:col
        if matrix(i, j) == 0
            numOfZero = numOfZero + 1;
        elseif matrix(i, j) == 1
            numOfOne = numOfOne + 1;
        elseif matrix(i,j) == 2
            numOfTwo = numOfTwo + 1;
        elseif matrix(i, j) == 3
            numOfThree = numOfThree + 1;
        elseif matrix(i, j) == 4
            numOfFour = numOfFour + 1;
        else
            numOfFive = numOfFive + 1;
        end
    end
end

fp = fopen('output.txt', 'a');

fprintf(fp, 'Probability of choosing zero is %.4f\r\n', numOfZero/10000);
fprintf(fp, 'Probability of choosing one is %.4f\r\n', numOfOne/10000);
fprintf(fp, 'Probability of choosing two is %.4f\r\n', numOfTwo/10000);
fprintf(fp, 'Probability of choosing three is %.4f\r\n', numOfThree/10000);
fprintf(fp, 'Probability of choosing four is %.4f\r\n', numOfFour/10000);
fprintf(fp, 'Probability of choosing five is %.4f\r\n', numOfFive/10000);

fclose(fp);