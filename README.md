**1.安装nginx**

```bash
yum install -y nginx
systemctl enable nginx --now
```

确认nginx正常运行

```bash
curl 127.0.0.1
```

**2.新建/home/trojan-go/文件夹**

**3.上传所有内容，1.key、1.pem为域名SSL证书，替换你自己的**

**4.修改config.json文件中，端口和password内容，默认端口为443**

```bash
…
"local_port": 443,
…
"password": [
        "<input-your-password>"
    ],
…
"fallback_port": 443
…
```

**5.修改1.sh中firewalld方行的端口，与步骤4中的对应，默认为443**

```bash
firewall-cmd --add-port=443/tcp
firewall-cmd --add-port=443/tcp --permanent
```

**6.bash 1.sh运行脚本即可**

