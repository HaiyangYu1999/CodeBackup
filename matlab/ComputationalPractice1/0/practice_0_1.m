n=[1,2,3,5,10,20,100];
x=[.5,.9,1.1,1.5];
A=[];
for j=1:1:9
    for i=1:1:4
        if j==1
           A(i,j)=x(i);
        end
        if j==9
            A(i,j)=log(x(i));
        end
        if (j<9)&&(j>1)
            A(i,j)=log_Taylor(x(i),n(j-1));
        end
    end
end
A           %A�ĵ�1��Ϊx��4��ȡֵ, ��2��8�зֱ�Ϊnȡ1,2,3,5,10,20,100ʱ�����4��x�Ľ��ƶ���ֵ����9��Ϊ4��x����������ֵ