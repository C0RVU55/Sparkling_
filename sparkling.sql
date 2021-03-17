CREATE TABLE users (
	user_no NUMBER primary key, /* 회원번호 */
	user_id VARCHAR2(50) NOT NULL, /* 아이디 */
    user_name varchar2(50) not null, /* 유저네임*/
	password VARCHAR2(50) NOT NULL, /* 비밀번호 */
	nickname VARCHAR2(30) NOT NULL, /* 닉네임 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	user_photo VARCHAR2(300) NOT NULL, /* 사진 */
	user_phone number not null, /* 전화번호 */
	user_level NUMBER NOT NULL, /* 종합레벨 */
	user_date DATE NOT NULL, /* 회원가입날짜 */
    CONSTRAINT UK_USERS_NICKNAME UNIQUE (NICKNAME)
);

INSERT INTO users VALUES('1', 'test_id', 'test_name', '1234', 'test_nick', 'test_addr', 'test_photo', '01011111111', '1', sysdate);

INSERT INTO users VALUES('2', 'test_id2', 'test_name2', '1234', 'test_nick2', 'test_addr2', 'test_photo2', '01022222222', '1', sysdate);

SELECT
    *
FROM    users;

CREATE TABLE alarm (alarm_no NUMBER NOT NULL,
                    from_user_no NUMBER NOT NULL,
                    to_user_no NUMBER NOT NULL,
                    alarm_content VARCHAR2(3000) NOT NULL,
                    sell_type VARCHAR2(200) NOT NULL,
                    alarm_date DATE NOT NULL,
                    prod_state VARCHAR2(200) NOT NULL);
                    
                    DROP TABLE alarm;

CREATE UNIQUE INDEX PK_alarm
	ON alarm (
		alarm_no ASC
	);

ALTER TABLE alarm
	ADD
		CONSTRAINT PK_alarm
		PRIMARY KEY (
			alarm_no
		);

--users 테이블 필요
ALTER TABLE alarm
	ADD
		CONSTRAINT FK_user_TO_alarm
		FOREIGN KEY (
			from_user_no
		)
		REFERENCES users (
			user_no
		);

--users 테이블 필요
ALTER TABLE alarm
	ADD
		CONSTRAINT FK_user_TO_alarm2
		FOREIGN KEY (
			to_user_no
		)
		REFERENCES users (
			user_no
		);
        
INSERT INTO alarm VALUES('1', '1', '1', '결제가 완료되었습니다', '매칭', sysdate, '결제완료');

INSERT INTO alarm VALUES('3', '1', '1', '매칭이 등록되었습니다', '매칭', sysdate, '매칭 진행 중');

INSERT INTO alarm VALUES('2', '2', '2', '배송이 완료되었습니다', '배송', sysdate, '배송완료');

SELECT
    *
FROM    alarm;

SELECT  a.alarm_date,
        u.user_id,
        a.sell_type,
        a.prod_state,
        a.alarm_content
FROM    alarm a, users u
WHERE   a.from_user_no = u.user_no
        and a.to_user_no = 1;    