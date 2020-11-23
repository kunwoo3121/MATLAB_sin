function v = sine_2016115913(x,n)
    
    %2016115913 °­±Ç¿ì
    result = zeros(size(x));
    k = 1;
    
    for j = 1 : n
        if(j ~= 1)
            k = k * (2 * j - 1) * (2 * j - 2) * (-1);
        end
        
        result =  result + ( ( x.^(2 * j - 1) ) / k );
    end
   
    v = result;
    
    plot(x, result, 'r:o', 'LineWidth', 4),grid
end
    
    
