/* 프로필(profile) */
CREATE TABLE profile(profile_no NUMBER NOT NULL,
                     user_no NUMBER NOT NULL,
                     event_no NUMBER NOT NULL,
                     height NUMBER NOT NULL,
                     weight NUMBER NOT NULL,
                     career VARCHAR2(50) NOT NULL,
                     major VARCHAR2(300) NOT NULL,
                     exp NUMBER NOT NULL,
                     profile_date DATE NOT NULL,
                     recently_exer VARCHAR2(200) NOT NULL,
                     word VARCHAR2(500) NOT NULL,
                     time VARCHAR2(200),
                     address VARCHAR2(200));

CREATE UNIQUE INDEX PK_profile
	ON profile (
		profile_no ASC
	);

ALTER TABLE profile
	ADD
		CONSTRAINT PK_profile
		PRIMARY KEY (
			profile_no
		);

--users 테이블 필요
ALTER TABLE profile
	ADD
		CONSTRAINT FK_user_TO_profile
		FOREIGN KEY (
			user_no
		)
		REFERENCES user (
			user_no
		);

--event 테이블 필요
ALTER TABLE profile
	ADD
		CONSTRAINT FK_event_TO_profile
		FOREIGN KEY (
			event_no
		)
		REFERENCES event (
			event_no
		);

DELETE FROM profile;
CREATE SEQUENCE seq_profile_no INCREMENT by 1 START WITH 1 NOCACHE;
DROP SEQUENCE seq_profile_no;

SELECT
    *
FROM    profile;
/* //프로필(profile) */

/* 알림(alarm) */
CREATE TABLE alarm (alarm_no NUMBER NOT NULL,
                    from_user_no NUMBER NOT NULL,
                    to_user_no NUMBER NOT NULL,
                    alarm_content VARCHAR2(3000) NOT NULL,
                    sell_type VARCHAR2(200) NOT NULL,
                    alarm_date DATE NOT NULL,
                    prod_state VARCHAR2(200) NOT NULL);

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
		REFERENCES user (
			user_no
		);

--users 테이블 필요
ALTER TABLE alarm
	ADD
		CONSTRAINT FK_user_TO_alarm2
		FOREIGN KEY (
			to_user_no
		)
		REFERENCES user (
			user_no
		);

DELETE FROM alarm;
CREATE SEQUENCE seq_alarm_no INCREMENT by 1 START WITH 1 NOCACHE;
DROP SEQUENCE seq_alarm_no;

SELECT
    *
FROM    alarm;
/* //알림(alarm) */

/* 장바구니(cart) */
CREATE TABLE cart (cart_no NUMBER NOT NULL,
                   user_no NUMBER,
                   prod_no VARCHAR2(200) NOT NULL,
                   colorsize_no NUMBER NOT NULL,
                   count NUMBER NOT NULL,
                   buy_no NUMBER);

CREATE UNIQUE INDEX PK_cart
	ON cart (
		cart_no ASC
	);

ALTER TABLE cart
	ADD
		CONSTRAINT PK_cart
		PRIMARY KEY (
			cart_no
		);

--product 테이블 필요
ALTER TABLE cart
	ADD
		CONSTRAINT FK_product_TO_cart
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);

--users 테이블 필요
ALTER TABLE cart
	ADD
		CONSTRAINT FK_user_TO_cart
		FOREIGN KEY (
			user_no
		)
		REFERENCES user (
			user_no
		);

--colorsize 테이블 필요
ALTER TABLE cart
	ADD
		CONSTRAINT FK_colorsize_TO_cart
		FOREIGN KEY (
			colorsize_no
		)
		REFERENCES colorsize (
			colorsize_no
		);
--buy 테이블 필요 → 완료
ALTER TABLE cart
	ADD
		CONSTRAINT FK_buy_TO_cart
		FOREIGN KEY (
			buy_no
		)
		REFERENCES buy (
			buy_no
		);

DELETE FROM cart;
CREATE SEQUENCE seq_cart_no INCREMENT by 1 START WITH 1 NOCACHE;
DROP SEQUENCE seq_cart_no;

SELECT
    *
FROM    cart;
/* //장바구니(cart) */

/* 구매(buy) */
CREATE TABLE buy (buy_no NUMBER NOT NULL,
                  prod_no VARCHAR2(200) NOT NULL,
                  user_no NUMBER NOT NULL,
                  colorsize_no NUMBER NOT NULL,
                  count NUMBER NOT NULL,
                  buy_address VARCHAR2(300) NOT NULL,
                  buy_ph NUMBER NOT NULL,
                  buy_delivery VARCHAR2(300),
                  buy_del_no NUMBER,
                  buy_del_state VARCHAR2(300) NOT NULL,
                  buy_date DATE NOT NULL);

CREATE UNIQUE INDEX PK_buy
	ON buy (
		buy_no ASC
	);

ALTER TABLE buy
	ADD
		CONSTRAINT PK_buy
		PRIMARY KEY (
			buy_no
		);

--users 테이블 필요
ALTER TABLE buy
	ADD
		CONSTRAINT FK_user_TO_buy
		FOREIGN KEY (
			user_no
		)
		REFERENCES user (
			user_no
		);

--colorsize 테이블 필요
ALTER TABLE buy
	ADD
		CONSTRAINT FK_colorsize_TO_buy
		FOREIGN KEY (
			colorsize_no
		)
		REFERENCES colorsize (
			colorsize_no
		);

--product 테이블 필요
ALTER TABLE buy
	ADD
		CONSTRAINT FK_product_TO_buy
		FOREIGN KEY (
			prod_no
		)
		REFERENCES product (
			prod_no
		);

DELETE FROM buy;
CREATE SEQUENCE seq_buy_no INCREMENT by 1 START WITH 1 NOCACHE;
DROP SEQUENCE seq_buy_no;

SELECT
    *
FROM    buy;