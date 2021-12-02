s = tf( 's' );
%sysL = ( 1 )/(s*( s^2+8*s+32 ));
sysL = 1/(s*(s+1)*(s+5)*(s+10));
rlocus( sysL );