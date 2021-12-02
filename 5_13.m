s = tf( 's' )
sysL = (s+1)*(s^2+81)/(s^2*(s+13)*(s^2+100));
%rlocus( sysL );
%[ K, p ] = rlocfind( sysL );
K=35;
CL = feedback(K*sysL,1);
step(CL);