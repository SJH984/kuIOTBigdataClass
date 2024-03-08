# kuIOTBigdataClass





##2024-02-22



-instruction
-google slide share
-github sign up
-github kcreate repository
-ubuntu hangul setting
-VsCode install
-git install
  ``` shell
sudo apt-get install git  
git clone https://github.com/SJH984/kuIOTBigdataClass.git
# kuIOTBigdataClass

-sql workbench install - ubuntu
MySQL DBMS install - window
MySQL DBMS install - ubuntu
vscode mysql extension install
Chapter01 database theory
Chapter3 SQL bases
#KuIOTBigdataClass

##2024-02-23

mysql ubuntu 문제 해결
user를 새로 만들어서 권한을 주어 봤지만 해결안됨.
-권한 설정 및 user create 시
- 'ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '0000'; 명령어
사용
-새로운 유저를 만들때  mysql_native_password를 사용하도록 설정
우분투 myworkbench 에서 코드를 작성하고 vscode에서 git 연동.
추가한 파일:
-create_database.sql
-create_table.sql
-insert_data.sql
-create_user.sql
-select1.sql
-3장 내용 추가
-셀렉트 쓰는 방법
-2장 데이터베이스 모델 진행.
-3장 group by 165p까지 진행.
윈도우 DBMS를 우분투에서 연결.
  -윈도우 DBMS에 외부 IP 접근가능한 user 생성.
  -윈도우 방화벽에서 3306 포트 열기.
  -우분투 DBMS에 임의의 데이터 넣고 윈도우에서 확인.
  -버츄엘박스 프로그램에서는 window로 가는 ping이 되지않음.
  VMware 프로그램에서는 window로 가는 ping이 잘 됨.


2024-02-29
ubuntu에서 visual studio code로 넘어갈때
makefile을 사용하여 파일을 만듦
make에서 사용하는 명령어 기본문법
여러개 특정어를 특정하며 등록
연속실행 명령어, 생략 가능 명렁어, 변수 사용
select gruop by 사용
order by 사용
조인 연산 left outer join, left join, right join, left inner join을 배움
부속질의 배움(중복사용)
집합연산 배움
-> 합집합 차칩합 교집합
exists 배움(상관 부속질의문)
데이터 정의어 배움
->create문(테이블 구성및 속성과 속성에 관한 제약 정의 및 기본키 외래키 정의)
{}->반복가능, {}->선택적사용, |->1개선택, <>-> 해당되는 문법 사항이 있음
not null -> null값을 허용하지 않음, default-> 기본값 설정
primary key-> 기본키 설정, foreign key->외래키 지정
on delete -> 투플삭제(cascade, set null), check-> 값에 대한 조건 부여
->alter문 배운(생선된 테이블의 속성과 그에 대한 제약 변경 및 기본키 외래키 변경)
add-> 속성추가, drop-> 속성삭제, modify->속성타입변경
drop문 배움
insert 배움
update 배움
delete 배움
sql내장함수 배움
숫자함수 배움
문자함수 배움
날짜시간함수 배움
[C프로그래밍 README](./C_src/Readme.md)


##2024-03-07
NULL 값 처리
부속질의
중첩질의{where} 비교연산자 in, not in연산자, all some/any(한정연산자)
스칼라 부속질의(select)
인라인뷰 - from 부속질의
뷰 만들기, 뷰 수정하기, 뷰 삭제하기
인덱스 개념과 특징 mysql에서의 인덱스 종류 및 개념
인덱스 만들기, 인덱스 재구성하기, 삭제하기
데이터베이스 프로그래밍의 개념 및 방법
(sql전용언어 사용, 일반프로그래밍 언어를 sql에 삽입하여 사용)
저장프로그램(데이터베이스 오용프로그램을 작성하는데 사용하는 sql전용언어)
프로시져(sql쿼리어 제어문의 집합으로 구성된 프로그램 단위)만들기(create procedure)
직접입력 or stored procedure 마우스 오른쪽 클릭으로 생성시켜 만들기
삽입작업을 하는 프로시져(InsertBook)
제어문을 사용하는 프로시져(BookInsertOrUpdate)
결과를 반환하는 프로시져(Averageprice)
커서를 사용하는 프로시져(Interest)
trigger(데이터의 변경문이 실행될때 자동으로 같이 실행되는 프로시져)
사용자 정의함수(입력된 값을 가공하여 결과값을 되돌려주는 함수)
python3 pip download

## 2024-03-08
데이터베이스의 팩 파일 구성을 부름
디버깅(오류체크 cmake)
데이터베이스 연동 파이썬 프로그래밍, 연동 웹 프로그래밍
데이터모델링(개념, ER모델을 관계 데이터 모델로 만드는 실습)
정규화->삭제이상 삽입이상 수정이상
함수 종속성(개념)
정규화(제1, 2, 3정규형)
제1정규형 -> 관계데이터베이스에서 릴레이션의 속성값은 반드시 원자값 이어야 함.
제2정규형 -> 제1정규형을 만족하는 릴레이션 속의 기본키기 아닌 속성이 기본키에 완전 함수 종속일때 그 릴레이션을 제2정규형이라고 한다.
제3정규형 -> 제2정규형을 만족하는 릴레이션 속의 기본키가 아닌 속성이 기본키에 비이행적으로
종속 할 경우 그 릴레이션을 제3정규형 이라고 한다.
BCNF정규형 -> 어떤 릴레이션을 구성하는 모든 결정자 X가 후보키이고 기본키인 Y에 종속될 때 그 릴레이션을 BCNF정규형 이라고 한다.
무손실분해 -> 어떤 릴레이션을 2개로 분해하고 나서 나누어진 2개의 릴레이션을 다시 합쳐서 원래의 릴레이션이 된다면 그 분해를 무손실분해라고 한다.
정규화 실습
