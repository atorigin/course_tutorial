## 設定 GCP cred
```
# 展示用 Service account key , 並 assume compute admin role 權限即可
export GOOGLE_APPLICATION_CREDENTIALS="../../demo_sa_key.json"
```

## 設定 AWS cred
```
# 展示 - 暫時使用 AWSEC2FullAccess 權限即可
aws configure
```

### 參考資料 [terraform documents](https://www.terraform.io/language/files)


## 安裝 terraform
```
# 安裝基本套件 apt
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# 設定 GPG Key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# 新增 apt 庫
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# 安裝 terraform
sudo apt-get update && sudo apt-get install terraform

# 設定 bash 補齊
terraform -install-autocomplete
source ~/.bashrc
```
