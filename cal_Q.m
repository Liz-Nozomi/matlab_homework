function[Q]=cal_Q(d,theta_degree)
g=9.8;
Dc=d/2*(1-cosd(theta_degree));
Q=2^(3/2)*Dc^(5/2)*sqrt(g)*(theta_degree-0.5*sind(2*theta_degree))^(3/2)/(8*sqrt(sind(theta_degree))*(1-cosd(theta_degree)^(5/2)));