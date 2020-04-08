## 申请帐号，验证邮箱

## 创建虚拟环境
<pre><code>virtualenv --python=python3.6 venv</code></pre>

## 启动虚拟环境
<pre><code>source bin/activate</code></pre>


## 导出需要用到的环境
<pre><code>pip fresze > requirments.txt</code></pre>


## 上传zip文件到home下面,并解压
<pre><code>unzip 文件名.zip
</code></pre>

## 一键安装所需要用到的文件
<pre><code>pip install -r requirments.txt
</code></pre>

## 创建APP
<p>选择manual configuration->pyhton3.6-NEXT</p>

## 设置WebApp

## 设置WSGI configuration file:
<p>在setting文件添加主机地址</p>

## 设置静态文件夹

## 收集静态文件夹的操作（第三方库）
<pre><code>python manage.py collectstatic
</code></pre>