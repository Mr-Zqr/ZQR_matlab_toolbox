function [A] = A_fast_lio(u)
norm_u = norm(u);
alpha_m = norm_u/2*(cos(norm_u/2)/sin(norm_u/2));
A = eye(length(u)) - 1/2*skew3(u)+(1-alpha_m)/(norm_u*norm_u)*skew3(u)*skew3(u);