# 2023-sql-sample

SQL 명령어를 학습하면서 작성한 샘플 코드입니다.

[유튜버 쉬운코드님의 데이터베이스 강의 영상](https://www.youtube.com/playlist?list=PLcXyemr8ZeoREWGhhZi5FZs6cvymjIBVe)을 참고했습니다.

## 💋 학습 순서

### ✔️ Basic

- [테이블 생성(DDL)](https://github.com/gitchan-Study/2023-sql-sample/pull/1)
- [데이터 추가(DML)](https://github.com/gitchan-Study/2023-sql-sample/pull/3)
- [데이터 수정(UPDATE)](https://github.com/gitchan-Study/2023-sql-sample/pull/4)
- [데이터 삭제(DELETE)](https://github.com/gitchan-Study/2023-sql-sample/pull/5)

### ✔️ Advanced

- `2023_sql_sample_dump.sql` 데이터로 진행

- [데이터 백업 방법](https://engineerinsight.tistory.com/261)
    - 로컬에 데이터베이스 생성 (이름: `2023_sql_sample_dump`)
    - 아래 명령어 통해 데이터 백업

```shell
mysql -uroot -p 2023_sql_sample_dump < 2023_sql_sample_dump.sql
```

- [JOIN 쿼리](https://github.com/gitchan-Study/2023-sql-sample/pull/8)

