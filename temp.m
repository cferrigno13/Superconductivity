function [T] = temp(V,p)

T = p(6) + p(5)*V + p(4)*V.^2 + p(3)*V.^3 + p(2)*V.^4 + p(1)*V.^5;

end