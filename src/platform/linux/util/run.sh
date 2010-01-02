#!/bin/sh

./cos_loader \
"c0.o,fprr.o,mpd.o,l.o,mm.o,print.o,te.o,net.o,e.o,fd.o,conn.o,http.o,\
stat.o,st.o,cm.o,sc.o,if.o,ip.o,ainv.o,fn.o,cgi.o,port.o,schedconf.o,\
bc.o,(fd2.o=fd.o),(fd3.o=fd.o),(cgi2.o=cgi.o),(ainv2.o=ainv.o):\
\
net.o-fprr.o|mm.o|print.o|l.o|te.o|e.o|ip.o|port.o;\
c0.o-fprr.o;\
fprr.o-print.o|mm.o|st.o|schedconf.o|[parent_]bc.o;\
mpd.o-fprr.o|print.o|te.o|mm.o;\
l.o-fprr.o|mm.o|print.o|te.o;\
te.o-print.o|fprr.o|mm.o;\
mm.o-print.o;\
e.o-fprr.o|print.o|mm.o|l.o|st.o;\
fd.o-print.o|e.o|net.o|l.o|fprr.o|http.o|mm.o;\
conn.o-fd.o|print.o|mm.o|fprr.o;\
http.o-mm.o|print.o|fprr.o|cm.o|te.o;\
stat.o-te.o|fprr.o|l.o|print.o|e.o;\
st.o-print.o;\
ip.o-if.o;\
port.o-l.o;\
cm.o-print.o|mm.o|sc.o|fprr.o|ainv.o|[alt_]ainv2.o;\
sc.o-print.o|mm.o|e.o|fprr.o;\
if.o-print.o|mm.o|l.o|fprr.o;\
fn.o-fprr.o;\
fd2.o-fn.o|ainv.o|print.o|mm.o|fprr.o|e.o|l.o;\
ainv.o-mm.o|print.o|fprr.o|l.o|e.o;\
cgi.o-fd2.o|fprr.o|print.o;\
fd3.o-fn.o|ainv2.o|print.o|mm.o|fprr.o|e.o|l.o;\
ainv2.o-mm.o|print.o|fprr.o|l.o|e.o;\
cgi2.o-fd3.o|fprr.o|print.o;\
schedconf.o-print.o;\
bc.o-print.o\
" ./gen_client_stub