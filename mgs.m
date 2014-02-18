function [q, r] = mgs(A)

for i=1:size(A,2)
    v(:,i) = A(:,i);
end

for i=1:size(A,2)
    r(i,i) = norm(A,1);
    q(:,i) = v(:,i)/r(i,i);
    for j=i+1:size(A,2)
        r(i,j) = q(:,i).'*v(:,j);
        v(:,j) = v(:,j) - r(i,j)*q(:,i);
    end
end
end