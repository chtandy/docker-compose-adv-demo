### env 用途
- 傳參數到docker build
- container 環境變數使用

### docker build 進階
- 傳參數
```
docker build --build-arg BASE_IMAGE=ubuntu:18.04 --build-arg ANSIBLE_VERSION=2.9 -t test .
```

### docker-compose 使用.env 當作設定檔來源

### 可強制指定env file
- 格式
```
web:
  env_file:
    - env-file.env
```


### 查看設定檔
```
docker-compose config
```
### 設定環境變數
```
export ENV=beta
```
