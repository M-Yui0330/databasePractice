-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE
-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。

-- 修正依頼の変更部分
CREATE TYPE gender_type AS ENUM ('Man', 'Woman', 'Other');

CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL DEFAULT '',
age INTEGER NOT NULL DEFAULT 0,
gender gender_type NOT NULL DEFAULT 'Other'
);

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs (
id SERIAL PRIMARY KEY,
user_id INTEGER NOT NULL,
name VARCHAR(255) NOT NULL DEFAULT '会社員',
CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id)
 );