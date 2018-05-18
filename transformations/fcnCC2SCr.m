function sc = fcnCC2SCr(x,y,z)
if nargin==1
    z = x(:,3);
    y = x(:,2);
    x = x(:,1);
end
sc = zeros(numel(x),3); 
r = sqrt(x.^2 + y.^2 + z.^2);

sc(:,1) = r;  
sc(:,2) = asin(-z./r);  
sc(:,3) = atan2(y,x);