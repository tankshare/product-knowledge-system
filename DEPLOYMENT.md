# GitHub 部署指南

## 📋 部署前准备

### 1. 创建 GitHub 仓库

请按照以下步骤操作：

1. 访问 [GitHub](https://github.com) 并登录您的账号
2. 点击右上角的 "+" 号，选择 "New repository"
3. 填写仓库信息：
   - **Repository name**: `product-knowledge-system` (或您喜欢的名称)
   - **Description**: 市场部经理产品知识体系
   - **Public/Private**: Public (免费 GitHub Pages 需要 Public 仓库)
   - **Initialize this repository**: 不勾选任何选项
4. 点击 "Create repository"

### 2. 推送代码到 GitHub

复制以下命令到 PowerShell 中执行（需要将 `YOUR_USERNAME` 替换为您的 GitHub 用户名）：

```powershell
# 添加远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/product-knowledge-system.git

# 推送代码到 GitHub
git branch -M main
git push -u origin main
```

如果遇到权限问题，可能需要：
1. 在 GitHub 设置中生成 Personal Access Token (Settings → Developer settings → Personal access tokens → Tokens (classic))
2. 选择权限：`repo`（完整仓库权限）
3. 使用 Token 替代密码进行认证

### 3. 启用 GitHub Pages

1. 访问您刚创建的 GitHub 仓库
2. 进入 **Settings** 页面
3. 左侧菜单找到 **Pages** 选项
4. 在 **Build and deployment** 下配置：
   - **Source**: Deploy from a branch
   - **Branch**: `main` 分支
   - **Folder**: `/ (root)` 根目录
5. 点击 **Save**

等待 1-2 分钟，GitHub 会自动部署您的网站。部署完成后，您会看到访问链接，格式通常是：

```
https://YOUR_USERNAME.github.io/product-knowledge-system/
```

### 4. 配置自动化同步

为了实现每天自动更新内容，我们需要创建一个自动化任务。请运行以下命令：

```powershell
# 创建自动推送脚本
```

## 🚀 完成后您将获得

- ✅ 一个永久可访问的在线知识库链接
- ✅ 团队成员可以通过链接随时访问
- ✅ 每天自动更新新一期内容
- ✅ 完整的版本控制和历史记录
- ✅ 免费托管，无需额外成本

## 📝 注意事项

1. **第一次推送**：需要输入 GitHub 账号和密码（或 Token）
2. **私有仓库**：GitHub Pages 只支持 Public 仓库的免费版本
3. **自定义域名**：如需自定义域名，需要在 GitHub Pages 设置中配置
4. **HTTPS 访问**：GitHub Pages 默认支持 HTTPS，更加安全

## 🔄 后续维护

每当新的内容生成后，系统会自动：
1. 将新文件添加到 Git 仓库
2. 推送到 GitHub
3. GitHub Pages 自动更新网站
4. 访问同一链接即可看到最新内容

---

**需要帮助？** 如果在部署过程中遇到任何问题，请查看 GitHub Pages 官方文档或联系技术支持。
