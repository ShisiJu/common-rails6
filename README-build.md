# 全新的项目如何构建

## ruby on rails

- 安装 `ruby 2.7.3`
- 执行 `bundle install`
- `config\database.yml` 配置 pg 数据库

```sql
-- 密码是 sample
CREATE ROLE sample WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  CREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md56ad492ae3f3437963b8df4ab045165f1';
```

```sql
-- 创建 sample_production 数据库
CREATE DATABASE sample_production
    WITH
    OWNER = sample
    ENCODING = 'UTF8'
    LC_COLLATE = 'Chinese (Simplified)_China.936'
    LC_CTYPE = 'Chinese (Simplified)_China.936'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
```

```sh
# 初始化db信息
rails db:migrate
# 创建开发和测试的库
rails db:setup
```

```sh
rails g model User username:string, sex:string, age:integer
# 默认在development 环境下执行, 如果想执行正式的需要加上 RAILS_ENV=production
# rails db:migrate RAILS_ENV=production
rails db:migrate
```

Rails 秘钥, 需要 config\master.key 和 config\credentials.yml.enc

```sh
# https://stackoverflow.com/questions/57402435/how-to-run-rails-credentialsedit-on-windows-10-without-installing-a-linux-sub
$env:EDITOR="code --wait"
rails credentials:edit
```

## rspec

```sh
# 初始化rspec单元测试, 已执行
rails generate rspec:install
```

## device

```sh
rails generate devise User
```

## 启动

```sh
# http://127.0.0.1:3000
rails s -p 3000
 rails s -u webrick
```