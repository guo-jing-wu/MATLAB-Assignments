function prob = prob(n,p)
    prob = 0;
    i=1;
    for h=i:n
        if(rand<p)
            prob = i;
        else
            prob = 0;
        end
    end
end