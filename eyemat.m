function op=eyemat(mat)
[row,col]=size(mat);
for i=1:row
    for j=1:col
        if mat(i,j)>=0
            op(i,j)=1;
        else
            op(i,j)=0;
        end
    end
end
end
