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