x = round(rand * 9) + 1;
y = round(rand * 100);
 
if x == 1
     
     A = 'I bought an apple';
 
 else
     
     A = sprintf('I bought %d apples', x);
     
 end
 
 if y == 0
     
     B = ' but I didn''t buy any eggs';
    
 elseif y == 1
     
     B = ' and an egg';
     
 else
     
     B = sprintf(' and %d eggs', y);
 
 end
 
fprintf('%s%s\n', A, B)