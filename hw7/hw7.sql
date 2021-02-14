 CREATE TABLE Artist (
        BandID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        BandName VARCHAR(100) NOT NULL,
        Member INT NOT NULL
        );

    CREATE TABLE Style(
        StyleID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        StyleName VARCHAR(100) NULL
        );
    
    CREATE TABLE Music(
        MusicID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        MusicName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        Lyrics VARCHAR(2000) NOT NULL,
        AlbumID VARCHAR(100) NULL REFERENCES Album(AlbumID),
        SongLenght TIME NOT NULL
        );

    CREATE TABLE Album(
        AlbumID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        AlbumCoverPhoto VARCHAR(100) NOT NULL,
        AlbumName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        ReleaseYear YEAR(4) NOT NULL
        );


INSERT INTO Artist (BandName, Member)
    VALUES ('โลโซ(Loso)', '4'),
            ('Pause', '4'),
            ('Potato', '5'),
            ('Room39', '3');

    INSERT INTO Style (StyleName)
    VALUES ('ร็อกแอนด์โรล'),
            ('อินดี้ร็อค'),
            ('ป็อปร็อค'),
            ('ป็อป');
    
    INSERT INTO Music (MusicName,BandID,StyleID,Lyrics,AlbumID,SongLenght)
    VALUES ('รอยยิ้มนักสู้','1','1','หากเหนื่อยนักขอจงหยุดพักเสียก่อน อย่าใจร้อนรีบไปเดี๋ยวมันไม่เข้าที
หยุดเรื่องรักที่ทรมาน เรื่องงานเรื่องเงินก็ดี พักซักทีเดี๋ยวค่อยไป
อย่าไปคิดเรื่องเดิมให้มันปวดใจ ซ่อนเอาไว้ไม่ให้ใครเห็นความพ่ายแพ้
เก็บให้ลึกลงข้างในหัวใจที่อ่อนแอ เหลือเพียงแค่รอยยิ้มของนักสู้
ฉันก็เคยเสียใจไม่น้อยกว่าเธอ และฉันก็เจอเรื่องราวร้ายๆเข้ามา
แต่ทุกๆทีฉันก็ทำ ให้เป็นเหมือนดังว่าแข็งแรงกว่า ไม่ยอมพ่ายแพ้มัน
กว่าจะถึงฝั่งฝันนั้นมันยากเย็น อย่าพึ่งเห็นฉันเดินเข้ามาง่ายๆ
กว่าจะถึงที่ฉันยืน กล้ำกลืนฝืนทนเกือบตาย น้ำตาผู้ชายเคยไหลไม่ใช่เรื่องแปลก
ฉันก็เคยเสียใจไม่น้อยกว่าเธอ และฉันก็เจอเรื่องราวร้ายๆเข้ามา
แต่ทุกๆทีฉันก็ทำ ให้เป็นเหมือนดังว่าแข็งแรงกว่า ไม่ยอมพ่ายแพ้มัน
ฉันก็เคยเสียใจไม่น้อยกว่าเธอ และฉันก็เจอเรื่องราวร้ายๆเข้ามา
แต่ทุกๆทีฉันก็ทำ ให้เป็นเหมือนดังว่าแข็งแรงกว่า ไม่ยอมพ่ายแพ้มัน
ฉันก็เคยเสียใจไม่น้อยกว่าเธอ และฉันก็เจอเรื่องราวร้ายๆเข้ามา
แต่ทุกๆทีฉันก็ทำ ให้เป็นเหมือนดังว่าแข็งแรงกว่า ไม่ยอมพ่ายแพ้มัน
ฉันก็เคยเสียใจไม่น้อยกว่าเธอ และฉันก็เจอเรื่องราวร้ายๆเข้ามา
แต่ทุกๆทีฉันก็ทำ ให้เป็นเหมือนดังว่าแข็งแรงกว่า ไม่ยอมพ่ายแพ้มัน','1','00:04:50'),
        ('ดาว','2','2','หากคืนนี้มีดาวอยู่ล้านดวง ฉันขอได้ไหมสักดวงหนึ่งช่วยฟังฉันที
เพราะว่าคืนนี้ฉันมีเรื่องร้อนใจ อยากอธิฐานและขอดวงดาวให้ช่วยฉันสักที
เนื่องจากตอนนี้ฉันรู้สึกจิตใจมันอ่อนไหว อยากจะรู้ว่าเขาเป็นยังไงจากคำพูดวันนี้
เพราะฉันเพิ่งบอกรักไป และเขาก็รับฟังทุกอย่างทุกถ้อยคำ เหมือนความฝัน
แต่ฉันเองก็ไม่อาจแน่ใจ ว่าพรุ่งนี้เรื่องของเราจะสุขหรือแสนเศร้า
จึงวอนขอดาวให้ช่วยบอก(ที)
หากตัวเขามีใจให้ฉันจริง ฉันขอได้ไหมให้ทุกสิ่งเป็นจริงเรื่อยไป
ให้ต่อจากวันนี้เขามีแต่ฉันในหัวใจ จะอธิฐานและขอดวงดาวให้ช่วยฉันสักที
เนื่องจากตอนนี้ฉันรู้สึกจิตใจมันอ่อนไหว อยากจะรู้ว่าเขาเป็นยังไงจากคำพูดวันนี้
เพราะฉันเพิ่งบอกรักไป และเขาก็รับฟังทุกอย่างทุกถ้อยคำ เหมือนความฝัน
แต่ฉันเองก็ไม่อาจแน่ใจ ว่าพรุ่งนี้เรื่องของเราจะสุขหรือแสนเศร้า
จึงวอนขอดาวให้ช่วยบอก(ที)
ช่วยบอกให้ฉันรู้ ให้มั่นใจ การรอคอยมันยากเกินทนไหว
ได้โปรดช่วยบอกฉันและตอบหน่อยได้ไหม ว่าพรุ่งนี้เขากับฉันนั้นจะเป็นยังไง
เพราะฉันเพิ่งบอกรักไป และเขาก็รับฟังทุกอย่างทุกถ้อยคำ เหมือนความฝัน
แต่ฉันเองก็ไม่อาจแน่ใจ ว่าพรุ่งนี้เรื่องของเราจะสุขหรือแสนเศร้า
จึงวอนขอดาวให้ช่วยบอก(ที)
หากตัวเขา
มีใจให้ฉันจริง
ฉันขอได้ไหมให้ทุกสิ่ง
เป็นจริงเรื่อยไป
ต่อจากวันนี้
เขามีแต่ฉันในหัวใจ
จะอธิษฐานและขอดวงดาวให้
ช่วยฉันสักที
เนื่องจากตอนนี้ฉันรู้สึก
จิตใจมันอ่อนไหว
อยากจะรู้ว่าเขาเป็นยังไง
จากคำพูดวันนี้
เพราะฉันเพิ่งบอก
รักไปและเขา
ก็รับฟังทุกอย่าง
ทุกถ้อยคำเหมือนความฝัน
แต่ฉันเองก็ไม่อาจ
แน่ใจว่าพรุ่งนี้
เรื่องของเราจะสุข
หรือแสนเศร้า
จึงวอนขอดาวให้ช่วยบอก
ช่วยบอกให้ฉันได้รู้
ให้มั่นใจ
การรอคอย
มันยากเกินทนไหวได้โปรดช่วยบอกฉัน
และตอบหน่อยได้ไหม
พรุ่งนี้เขากับฉัน
นั้นจะเป็นอย่างไร
เพราะฉันเพิ่งบอก
รักไปและเขา
ก็รับฟังทุกอย่าง
ทุกถ้อยคำเหมือนความฝัน
แต่ฉันเองก็ไม่อาจ
แน่ใจว่าพรุ่งนี้
เรื่องของเราจะสุข
หรือแสนเศร้า
จึงวอนขอดาวให้ช่วยบอกที','2','00:04:12'),
        ('ประโยคสุดท้าย','2','2','ไม่เคยเอ่ยถ้อยคำที่อ่อนหวาน
รักกันมองตากันก็เหมือนจะเข้าใจ
คิดว่าไม่จำเป็นสักเท่าไหร่
ถ้าหัวใจเราต่างก็รู้ดี
ไม่ค่อยทำอะไรให้ซาบซึ้ง
ทั้งที่แคร์แต่กับนึกถึงคนสุดท้าย
คิดว่ามันก็คงไม่เป็นอะไร
พรุ่งนี้มีโอกาสค่อยบอก
จนวันนี้ที่หันไปแล้วไม่มีเธอข้างฉัน
เมื่อนึกแล้วมันก็เสียดายทุกที
ทำไมฉันไม่พูดอะไรตอนนั้นให้ดีกว่านี้
มันเลยติดอยู่ที่ประโยคสุดท้าย
ที่มันน่าจะเป็นคำว่าฉันรักเธอ
เสียดายที่ไม่ทันได้บอกว่ารักเธอเสมอ
เธอน่าจะได้รู้
ทั้งที่มีโอกาสตั้งมากมาย
ชิดใกล้จนบางทีก็ลืมเสียอย่างนั้น
รักเอยความรู้สึกของเธอกับฉัน
หวังว่าสักวันคงได้บอก
แต่วันนี้ที่หันไปแล้วไม่มีเธอข้างฉัน
เมื่อนึกแล้วมันก็เสียดายทุกที
อยากจะพูดอะไรตอนนั้นกับเธอให้ดีกว่านี้
มันเลยติดอยู่ที่ประโยคสุดท้าย
ที่มันน่าจะเป็นคำว่าฉันรักเธอ
เสียดายที่ไม่ทันได้บอกว่ารักเธอเสมอ
เธอน่าจะได้รู้
เสียดายที่ไม่ทันได้บอกว่ารักเธอเสมอ
ติดอยู่ที่ประโยคสุดท้าย
ที่มันน่าจะเป็นคำว่าฉันรักเธอ
เสียดายที่ไม่ทันได้บอกว่ารักเธอเสมอ
เธอน่าจะได้รู้','3','00:04:40'),
        ('รอย','3','3','รอยแผลเก็บมันลึกข้างในจิตใจ
เนิ่นนานเท่าไรที่ฉันร้องไห้อย่างนี้
รอยยิ้มแต่ละวันมันรู้สึกดี
แต่มันจะมีใครรู้ฉันเป็นอย่างไร
ปิดบังความจริงเอาไว้ในใจ

อยากจะโยนทิ้งตัวลงนอน เพื่อลืมมันไป
ปล่อยให้หมอนซึบซับน้ำตาที่มีจนแห้งเหือดไป
ให้ราตรีมืดมนกลบกลืนรอยความเสียใจ
ให้พรุ่งนี้ฉันลืมตามาได้พบกับใคร
สักคน..คนที่เข้าใจ..จริงจริง

รอยร้าว ยังบาดลึกไม่เคยจางไป
ต้องร้องไห้อีกสักแค่ไหน จะพอสักที

อยากลืมอยากลบอยากล้างมันไป
ปิดประตูขังตัวเองไว้ จากสายตาใครใคร

อยากจะโยนทิ้งตัวลงนอน เพื่อลืมมันไป
ปล่อยให้หมอนซึบซับน้ำตาที่มีจนแห้งเหือดไป
ให้ราตรีมืดมนกลบกลืนรอยความเสียใจ
ให้พรุ่งนี้ฉันลืมตามาได้พบกับใคร
โว้ โว โว้....โว้ โว โว้....

ปิดบังความจริงเอาไว้ในใจ
อยากลืมอยากลบอยากล้างมันไป

ปิดบังความจริงเอาไว้ในใจ
ปิดประตูขังตัวเองไว้ จากสายตาใครใคร

อยากจะโยนทิ้งตัวลงนอน เพื่อลืมมันไป
ปล่อยให้หมอนซึบซับน้ำตาที่มีจนแห้งเหือดไป
ให้ราตรีมืดมนกลบกลืนรอยความเสียใจ
ให้พรุ่งนี้ฉันลืมตามาได้พบกับใคร
สักคน..คนที่เข้าใจ..จริงจริง','4','00:05:52'),
        ('เธอทำให้ได้รู้','3','3','เธอทำให้ฉันโกรธ ทำให้ฉันแอบยิ้ม
ทำให้ฉันซึม ทำให้ฉันเหงา
เธอทำให้ฉันร่าเริง ทำให้ฉันร้อนรน
เธอทำให้ฉันทุกสิ่ง
เธอทำให้ฉันเบื่อ ทำให้ฉันหัวเราะ
ทำให้ฉันรอ ทำให้สุขใจ เธอทำให้ฉันร้องไห้
ทำให้ฉันทุกอย่าง
ก็มันยากเกินที่จะอธิบายทุกเรื่องราว
แต่วันนี้เธอคือทุกอย่างในใจฉัน
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่ต่างไป
รู้ รู้ถึงคำว่ารักที่มีความหมาย
เธอทำให้รู้ว่า ฉันยังมีหัวใจ
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่หลากหลาย
รู้ รู้ว่าคำว่ารักมันไม่ง่ายดาย
ทำให้ฉันเข้าใจ ว่าหนึ่งคนนี้มันยังคงมีหัวใจ
เธอทำให้ฉันรักเธอ
เธอทำให้ฉันยอม ยอมไม่มีข้อแม้
ยอมเพราะฉันแคร์ ยอมเพราะเข้าใจ
เธอทำให้ฉันแพ้พ่าย ตั้งแต่ฉันมีเธอ
ก็มันยากเกินที่จะอธิบายทุกเรื่องราว
แต่วันนี้เธอคือทุกอย่างในใจฉัน
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่ต่างไป
รู้ รู้ถึงคำว่ารักที่มีความหมาย
เธอทำให้รู้ว่า ฉันยังมีหัวใจ
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่หลากหลาย
รู้ รู้ว่าคำว่ารักมันไม่ง่ายดาย
ทำให้ฉันเข้าใจ ว่าหนึ่งคนนี้มันยังคงมีหัวใจ
เธอทำให้ฉันรักเธอ
ทำให้รู้ให้เข้าใจ อาจมีสุขทุกข์ปนกันไป
ทำให้รู้และเข้าใจ ว่ารักเป็นอย่างนี้
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่ต่างไป
รู้ รู้ถึงคำว่ารักที่มีความหมาย
เธอทำให้รู้ว่า ฉันยังมีหัวใจ
ก็เธอทำให้ได้รู้ รู้ถึงคำว่ารักที่หลากหลาย
รู้ รู้ว่าคำว่ารักมันไม่ง่ายดาย
ทำให้ฉันเข้าใจ ว่าหนึ่งคนนี้มันยังคงมีหัวใจ
เธอทำให้ฉันรักเธอ','4','00:05:08'),
        ('ฉันต้องคู่กับเธอ','4','4','ส้อมกับช้อน
เสื่อกับหมอน
ตะปูคู่ค้อน โรงหนังกับป๊อปคอร์น
น้ำมันกับเปลวไฟ
ลำโพงกับไมค์
ส่วนสมองต้องคู่กับหัวใจ
ต่างกันแค่ไหน แต่ถ้าขาดกันไป
คงจะไม่ไหว ไปไม่รอดสักอัน
มาเป็นคู่ช่วยกันอยู่ทุกที
ถึงต่างกันอย่างนี้แต่เป็นคู่กัน
ถึงแม้เรานั้นแตกต่างกันสักเท่าไร
แต่ก็รู้ลึกลึกข้างในใจเรานั้น
ฉันต้องคู่กับเธอมีเพียงแต่เธอ แค่เธอเท่านั้น
ที่คอยเติมสิ่งที่ขาด
ช่วยประคองเมื่อฉันพลาด
ให้เราได้เดินต่อด้วยกัน
ฉันต้องคู่กับเธอ
ต้องมีแต่เธอ คู่กันเสมอ
ตลอดจนนิรันดร์
นิรันดร์
นิรันดร์
ฉันเกิดมาเพื่อคู่เธอเท่านั้น
เพื่อรักแต่เธอเท่านั้น
ไม่มีวันเปลี่ยน
ช้างคู่กับซีดี รีโมทกับทีวี ก้านคอคลับกับโจอี้
คนไทยกับล็อตตารี่ โดนัทกับกาแฟ
เพลงฟรีกับ 4shared ประตูกับกุญแจ
ช่องสามกับกาละแมร์
แปลกถ้าต้องแยกย้ายกันไป
ไม่ มันไม่ใช่ แยกไม่ได้ไม่สัมพันธ์
แค่คิดนี้มันก็ผิด วิปริต ผมรับประกัน
ต้องอยู่คู่กันแบบนี้ Happy ทุกวัน
ถึงแม้เรานั้นแตกต่างกันสักเท่าไร
แต่ก็รู้ลึกลึกข้างในใจเรานั้น
ฉันต้องคู่กับเธอมีเพียงแต่เธอ แค่เธอเท่านั้น
ที่คอยเติมสิ่งที่ขาด
ช่วยประคองเมื่อฉันพลาด
ให้เราได้เดินต่อด้วยกัน
ฉันต้องคู่กับเธอ
ต้องมีแต่เธอ คู่กันเสมอ
ตลอดจนนิรันดร์
นิรันดร์
นิรันดร์
ฉันเกิดมาเพื่อคู่เธอเท่านั้น
เพื่อรักแต่เธอเท่านั้น
ไม่มีวันเปลี่ยน
ฮูฮู้ เย้เย
ฉันเกิดมาคู่เธอ
เพื่อคู่เธอ
เพื่อคู่กับเธอเท่านั้น โอโอ้ ฮูฮู้
ฉันต้องคู่กับเธอมีเพียงแต่เธอ แค่เธอเท่านั้น
ที่คอยเติมสิ่งที่ขาด
ช่วยประคองเมื่อฉันพลาด
ให้เราได้เดินต่อด้วยกัน
ฉันต้องคู่กับเธอ
ต้องมีแต่เธอ คู่กันเสมอ
ตลอดจนนิรันดร์
นิรันดร์
นิรันดร์
ตลอดจนนิรันดร์
นิรันดร์
นิรันดร์
ฉันเกิดมาเพื่อคู่เธอเท่านั้น
เพื่อรักแต่เธอเท่านั้น
ไม่มีวันเปลี่ยน โอ โอ
จือดือดึดจือ เย้เย
เย้เย อู้
อื้ม ไม่มีวันเปลี่ยน
ฮู้โว้โว้โฮ อูโว
โอ้โฮ้ เย้ฮืม
อื้ม ไม่มีวันเปลี่ยน','5','00:03:31'),
        ('หน่วง','4','4','ทุกๆ ครั้งที่เธอนั้นส่งรอยยิ้มเข้ามาทักทาย
ทุกๆ ครั้งที่เธอนั้นส่งสายตาเข้ามาหากัน
ทำให้ฉันนั้นแทบจะขึ้นสวรรค์
ทั้งที่ยังยืนอยู่ตรงนั้น
(แทบจะขึ้นสวรรค์ทั้งที่ยืนอยู่)
ทุกๆ ครั้งที่เธอนั้นคอยส่งเสียง และทุกข้อความ
ทุกๆ ครั้งที่เธอนั้นคอยเฝ้าถาม และเป็นห่วงฉัน
ทำให้ฉันนั้นแทบจะดิ้น ดิ้นตายอยู่ตรงนั้น
แต่ติดที่ฉันนั้นไม่ใช่เพียงคนเดียว
(เพียงคนเดียว เพียงคนเดียว)
ที่ได้รับท่าทีที่แสนดีเหล่านั้น
มันจึงเป็นความรัก ที่ไม่ถึงกับสุข
เป็นความทุกข์ ที่ไม่ถึงกับเศร้า
เป็นความรัก ที่ทั้งซึ้งทั้งเหงาอยู่ด้วยกัน
(เป็นความซึ้งและความเงียบเหงาอยู่ด้วยกัน)
จึงเป็นความรักที่มาพร้อมความอึดอัด
และเป็นความรักที่ไม่เคยเห็นภาพชัดๆ สักวัน
มีแค่ความรู้สึกครึ่งๆ กลาง ๆ
ข้างในใจของฉัน เพียงคนเดียว
ทุกๆ ครั้งที่มือของเรานั้น ได้มาสัมผัส
ทุกๆ ครั้งที่เธอนั้น บอกความลับให้ฉันฟัง
รู้ไหมว่าหัวใจของฉัน มันแทบละลายอยู่ตรงนั้น
แต่ติดที่ฉันนั้นไม่ใช่เพียงคนเดียว
(เพียงคนเดียว เพียงคนเดียว)
ที่ได้รับท่าทีที่แสนดีเหล่านั้น
มันจึงเป็นความรัก ที่ไม่ถึงกับสุข
เป็นความทุกข์ ที่ไม่ถึงกับเศร้า
เป็นความรัก ที่ทั้งซึ้งทั้งเหงาอยู่ด้วยกัน
(เป็นความซึ้งและความเงียบเหงาอยู่ด้วยกัน)
จึงเป็นความรักที่มาพร้อมความอึดอัด
และเป็นความรักที่ไม่เคยเห็นภาพชัดๆ สักวัน
มีแค่ความรู้สึกครึ่งๆ กลาง ๆ
ข้างในใจของฉัน เพียงผู้เดียว
ฉันไม่รู้ ระหว่างเรานั้นคืออะไร
และไม่รู้ต้องเป็นอย่างนี้ ไปอีกนานแค่ไหน
มันจึงเป็นความรัก ที่ไม่ถึงกับสุข
เป็นความทุกข์ ที่ไม่ถึงกับเศร้า
เป็นความรัก ที่ทั้งซึ้งทั้งเหงาอยู่ด้วยกัน
(เป็นความซึ้งและความเงียบเหงาอยู่ด้วยกัน)
จึงเป็นความรักที่มาพร้อมความอึดอัด
และเป็นความรักที่ไม่เคยเห็นภาพชัดๆ สักวัน
มีแค่ความรู้สึกครึ่งๆ กลาง ๆ
จึงเป็นความรัก ที่ไม่ถึงกับสุข
เป็นความทุกข์ ที่ไม่ถึงกับเศร้า
เป็นความรัก ที่ทั้งซึ้งทั้งเหงาอยู่ด้วยกัน
จึงเป็นความรักที่มาพร้อมความอึดอัด
และเป็นความรักที่ไม่เคยเห็นภาพชัดๆ สักวัน
มีแค่ความรู้สึกครึ่งๆ กลาง ๆ
ข้างในใจของฉัน เพียงผู้เดียว
อึดอัดในใจของตัวฉันเพียงผู้เดียว แค่คนเดียว','5','00:04:33'),
        ('เป็นทุกอย่าง','4','4','เป็นเพื่อนเธอไปดูหนัง
อยู่ด้วยกันตอนเธอเหงา
ฟังทุกเรื่องราว ที่เธอระบาย
ยาวจนเช้า ฉันก็ยังยินดี
แม้ไม่ใช่คนพิเศษ ไม่ได้สำคัญสำหรับเธอ
เป็นคนโทรปลุกตอนเช้า
คอยเฝ้าถามและห่วงใย
อยากที่จะรู้ ว่าเธอเป็นไง
ในเวลาที่เธอไม่เหลือใคร
แม้เธออาจไม่เห็นกัน
ในบางวันที่เธอไม่ทุกข์ใจ
ทำได้แค่เพียง แค่ทุกๆ อย่างที่เธอขอ
จะนาน เท่าไร ไม่ว่า เมื่อไร
ก็พร้อมจะยอมทำให้เธอ
เป็นทุกอย่างให้เธอแล้ว
แม้ว่าเธอไม่เคยเป็นอะไรกับฉันเลย
ฉันก็แค่คนหนึ่ง ที่เธอต้องการในบางครั้ง
ได้อยู่ตรงนี้ก็ดีแค่ไหน
จะหวังอะไรให้มากมาย
เป็นคนที่เคยแอบรัก
เป็นคนที่เคยแอบหวัง
เป็นคนที่เธอให้ความสำคัญใน
วันที่เธอไม่เหลือใคร
เป็นให้เธอได้ทุกอย่าง
แต่ก็เหมือนไม่มีความหมาย
ทำได้แค่เพียง แค่ทุกๆอย่างที่เธอขอ
จะนาน เท่าไร ไม่ว่า เมื่อไร
ก็พร้อมจะยอมทำให้เธอ
เป็นทุกอย่างให้เธอแล้ว
แม้ว่าเธอไม่เคยเป็นอะไรกับฉันเลย
ฉันก็แค่คนหนึ่ง ที่เธอต้องการในบางครั้ง
ได้อยู่ตรงนี้ก็ดีแค่ไหน
เป็นทุกอย่างให้เธอแล้ว
แม้ว่าเธอไม่เคยเป็นอะไรกับฉันเลย
ก็ฉันคงไม่มีสิทธิ์จะคิดอะไรไปมากกว่านี้
ได้อยู่ตรงนี้ก็ดีแค่ไหน
จะหวังอะไรให้มากมาย
เป็นทุกอย่างให้เธอแล้ว
แม้ว่าเธอไม่เคยเป็นอะไรกับฉันเลย
ฉันก็แค่คนหนึ่ง ที่เธอต้องการในบางครั้ง
ได้อยู่ตรงนี้ก็ดีแค่ไหน
เป็นทุกอย่างให้เธอแล้ว
แม้ว่าเธอไม่เคยเป็นอะไรกับฉันเลย
ก็ฉันคงไม่มีสิทธิ์จะคิดอะไรไปมากกว่านี้
ได้อยู่ตรงนี้ก็ดีแค่ไหน
จะหวังอะไรให้มากมาย
จะหวังอะไรให้มากมาย','6','00:06:43'),
        ('อย่าให้ฉันคิด','4','4','ได้ฟังเรื่องราวของเธอ
กับความรักที่กำลังจะจบลง
คงมีแค่ความเป็นห่วง
จากคนที่เป็นเพียงเพื่อนจะเหมาะสม
แต่เหมือนว่าในบางครั้ง
ที่เธอจ้องมองฉัน
คล้ายว่าเธอจะต้องการเป็นมากกว่านั้น
และฉันก็เป็นแค่เพื่อนคนหนึ่ง
ซึ่งภายในใจนั้นสับสนและยังมีคำถาม
อยากจะรู้เพียง
ถ้าไม่มีเขาแล้วเราจะรักกันไหม
หรือแค่ตัวฉันคนเดียวที่คิดฝันไป
จนไกลแสนไกลว่าเธอนั้นให้ความหวัง
อยากจะรู้แค่เพียง
ถ้าจบกับเขาแล้วเราจะรักกันไหม
อย่าปล่อยให้ฉันเฝ้ารอและคิดฝันไกล
คนเดียวเรื่อยไปถ้าเธอนั้นไม่ต้องการ
อย่าให้ฉันคิดไปเอง
อาจเป็นฉันที่คิดเกินไป
อ่อนไหวเพราะเพียงแค่คำว่าใกล้ชิด
ที่ปรึกษาแค่เพื่อนสนิท
เธออาจไม่คิดมากเกินจนเลยไปอย่างฉัน
แต่เหมือนว่าในบางครั้ง
ที่เธอจ้องมองฉัน
คล้ายว่าเธอจะต้องการเป็นมากกว่านั้น
และฉันก็เป็นแค่เพื่อนคนหนึ่ง
ซึ่งภายในใจนั้นสับสนและยังมีคำถาม
อยากจะรู้เพียง
ถ้าไม่มีเขาแล้วเราจะรักกันไหม
หรือแค่ตัวฉันคนเดียวที่คิดฝันไป
จนไกลแสนไกล
ว่าเธอนั้นให้ความหวัง
อยากจะรู้แค่เพียง
ถ้าจบกับเขาแล้วเราจะรักกันไหม
อย่าปล่อยให้ฉันเฝ้ารอและคิดฝันไกล
คนเดียวเรื่อยไป
ถ้าเธอนั้นไม่ต้องการ
อย่าให้ฉันคิดไปเอง
อย่าให้ฉันคิดไปเอง','6','00:05:04');

    INSERT INTO Album (AlbumCoverPhoto,AlbumName,BandID,StyleID,ReleaseYear)
    VALUES ('โลโซ(Loso)','Losoland','1','1','2001'),
            ('Pause','Mild','2','2','1999'),
            ('Pause','Dejavu','2','2','2019'),
            ('Potato','CHUDTEEJED','3','3','2019'),
            ('Room39','Room39','4','4','2014'),
            ('Room39','Restart','4','4','2017');