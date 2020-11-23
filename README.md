# MATLAB_sin

* MATLAB에서 sin함수를 이용하지 않고 Maclaurin series를 이용하여 sin값을 구하고 그래프를 그린다.

## 소스코드
```.m
function v = sine_2016115913(x,n)
    
    %2016115913 강권우
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
```

## 실행결과
![1](https://user-images.githubusercontent.com/28796089/100022651-e923bb00-2e26-11eb-9c53-f5e732bb1e00.JPG)  
![2](https://user-images.githubusercontent.com/28796089/100022655-eaed7e80-2e26-11eb-92cd-ceae8f1e2594.JPG)
