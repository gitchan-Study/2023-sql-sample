## 💋Implicit Join VS Explicit Join

### ✔️ Implicit Join

- from절에는 table들만 나열하고 where절에 join condition을 명시하는 방식
- `old-style` join syntax
- where절에 selection condition과 join condition이 같이 있기 때문에 가독성이 떨어진다
- 복잡한 join 쿼리를 작성하다 보면 실수로 잘못된 쿼리를 작성할 가능성이 크다

### ✔️ Explicit Join

- from절에 JOIN 키워드와 함께 joined table들을 명시하는 방식
- from절에서 ON 뒤에 join condition이 명시된다
- 가독성이 좋다
- 복잡한 join 쿼리 작성 중에도 실수할 가능성이 적다
