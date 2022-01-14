# cloudflared-on-onespace

> Your cloudflared tunnel client on onespace (arm64)

## 安装

系统管理 -> 上传 APP 包

## 配置

> 因技术力不足, 无法理解 onespace 应用系统运行机制, 尚未开发出 web 管理界面

以下为 终端运行命令

```sh
# 导入 cloudflared 路径
export PATH=/sata/app/cloudflared/bin:$PATH
```

配置 argo

```sh
# 打开 argo.moz.one 查看官方教程

# 登录, 并授权 域名
cloudflared tunnel login

# 创建通道, 会生成 UUID
cloudflared tunnel create <NAME>

cp /sata/app/cloudflared/bin/config.yml ~/.cloudflared/config.yml

# 修改为刚才的 UUID 和 域名
# 打开 ingress.moz.one 查看 ingress 配置
vi ~/.cloudflared/config.yml

```

## 运行

```sh
# 开始
/sata/app/cloudflared/bin/start.sh

# 停止
/sata/app/cloudflared/bin/stop.sh
```

## 自启

```sh
cp /sata/app/cloudflared/S99cfd /etc/init.d/S99cfd
```

## 卸载

```sh
rm -rf /sata/app/cloudflared/
```

## 感谢

[loeyun/OneSpaceApp](https://github.com/loeyun/OneSpaceApp)
