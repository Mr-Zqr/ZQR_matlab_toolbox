h = 0.0001; % sampling time
delta = 150;
r1_1 = 0;
r2_1 = 0;

for k = 1:length(v)
    r1(k) = r1_1+h*r2_1;
    r2(k) = r2_1+h*fst(r1_1-v(k),r2_1,delta,h);
end
