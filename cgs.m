function [q, r] = cgs(A)

for j=1:size(A,2)
    v(:,j) = A(:,j);
    for i=1:j-1
        r(i,j) = q(:,i).'*A(:,j);
        v(:,j) = v(:,j) - r(i,j)*q(:,i);
    end
    r(j,j) = norm(v(:,j),2);
    q(:,j) = v(:,j)/r(j,j);
end
end