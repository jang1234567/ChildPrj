DELETE FROM user;
DELETE FROM product;
DELETE FROM product_comment ;

ALTER TABLE user AUTO_INCREMENT = 1;
ALTER TABLE product AUTO_INCREMENT = 1;
ALTER TABLE product_comment AUTO_INCREMENT = 1;

-- 샘플 사용자
INSERT INTO user(loginId, nickname, name, password, email) VALUES
('apple1234', '말랑한고구마', '박사과', '$2a$10$6gVaMy7.lbezp8bGRlV2fOArmA3WAk2EHxSKxncnzs28/m3DXPyA2', 'apple@mail.com'),
('melon1234', '맑은아침햇살', '김멜론', '$2a$10$7LTnvLaczZbEL0gabgqgfezQPr.xOtTab2NAF/Yt4FrvTSi0Y29Xa', 'melon@mail.com'),
('cherry1234', '마라탕먹고싶다', '이체리', '$2a$10$53OEi/JukSMPr3z5RQBFH.z0TCYSUDPtxf1/8caRyRVdDNdHA9QHi', 'cherry@mail.com')
;

-- 샘플 상품
-- INSERT INTO product(productName, region, price, content, viewCnt, userId) VALUES
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  1),
-- ('패딩 강', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
-- ('아기 조끼용', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 7,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 8, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 6, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 8, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 11, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 12, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 13,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 11, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 6, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 8, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 9, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 8,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 14, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 15, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 6, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 8, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 10,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 15, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 14,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 9,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 6, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 8, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 12, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 12,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 8, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 7, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 9, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 10, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  1),
-- ('패딩', '용산구', 20000, '패딩 팔아요~ ', 7, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 8, 3),
-- ('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
-- ('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3)
-- ;

-- 샘플 상품
INSERT INTO product(productName, region, price, content, viewCnt, userId) VALUES
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  1),
('패딩 강', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
('아기 조끼용', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 1),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2)
;

-- 샘플 상품 댓글
INSERT INTO product_comment(content, userId, productId) VALUES
('말랑한고구마가 1번 글에 댓글 작성', 1, 1),
('말랑한고구마가 2번 글에 댓글 작성', 1, 2),
('말랑한고구마가 3번 글에 댓글 작성', 1, 3),
('말랑한고구마가 4번 글에 댓글 작성', 1, 4),
('말랑한고구마가 5번 글에 댓글 작성', 1, 5),
('맑은아침햇살이 1번 글에 댓글 작성', 2, 1),
('맑은아침햇살이 2번 글에 댓글 작성', 2, 2),
('맑은아침햇살이 3번 글에 댓글 작성', 2, 3),
('맑은아침햇살이 4번 글에 댓글 작성', 2, 4),
('맑은아침햇살이 5번 글에 댓글 작성', 2, 5),
('마라탕먹고싶다가 1번 글에 댓글 작성', 3, 1),
('마라탕먹고싶다가 2번 글에 댓글 작성', 3, 2),
('마라탕먹고싶다가 3번 글에 댓글 작성', 3, 3),
('마라탕먹고싶다가 4번 글에 댓글 작성', 3, 4),
('마라탕먹고싶다가 5번 글에 댓글 작성', 3, 5)
;




