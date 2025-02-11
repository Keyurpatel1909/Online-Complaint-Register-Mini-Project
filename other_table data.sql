USE OCS;
INSERT INTO ocs.d_table
VALUES 
	(180001,'Garbage and Cleanliness','anjana, bhatena, suart, Gujrat' ),
    (180002, 'Mosquitoes and Mosquito borne Diseases', 'ABC Road, Adajan, Surat, Gujarat'),
    (180003, 'Roads and Footpath', 'XYZ Society, Vesu, Surat, Gujarat'),
    (180004, 'Water Supply', '1234 Street, Varachha, Surat, Gujarat'),
    (180005, 'Drainage & Storm Drain', '456 Park, Udhna, Surat, Gujarat'),
    (180006, 'Street light', 'PQR Chowk, City Light, Surat, Gujarat'),
    (180007, 'Dead Animals & Stray Animals', '789 Colony, Katargam, Surat, Gujarat'),
    (180008, 'Illegal Construction and Encroachment', '321 Plaza, Majura Gate, Surat, Gujarat'),
    (180009, 'Food Safety Act', '678 Market, Rander, Surat, Gujarat'),
    (180010, 'Hospitals and Dispensaries', '890 Hospital, Athwa, Surat, Gujarat'),
    (180011, 'Complaints against SMC Staff', 'JKL Society, Palanpur, Surat, Gujarat'),
    (180012, 'Property Tax', '321 Business Center, Ring Road, Surat, Gujarat'),
    (180013, 'Door to Door Garbage Collection', '789 Apartment, Adajan, Surat, Gujarat'),
    (180014, 'Public Parks & Garden & Toilet', '456 Street, Nanpura, Surat, Gujarat'),
    (180015, 'Sitilink - BRTS & City Bus Service', 'XYZ Station, Amroli, Surat, Gujarat'),
    (180016, 'Smimmer College & Hospital', '123 College Road, Vesu, Surat, Gujarat'),
    (180017, 'Air Quality Management', 'ABC Society, Pal Gam, Surat, Gujarat'),
    (180018, 'Shops and Establishment', '456 Plaza, Ghod Dod Road, Surat, Gujarat');


INSERT INTO ocs.zone_table
VALUES 
    (200001, 'West Zone (Rander)'),
    (200002, 'Central Zone'),
    (200003, 'North Zone (Katargam)'),
    (200004, 'East Zone - A ( Varachha -A )'),
    (200005, 'East Zone - B ( Varachha -B )'),
    (200006, 'South Zone - A (Udhana)'),
    (200007, 'South Zone - B (Kanakpur)'),
    (200008, 'South West Zone (Athwa)'),
    (200009, 'South East Zone (Limbayat)');

INSERT INTO ocs.officer_table 
VALUES 
(220001, 'Rakesh Kumar', 'R@kesh123', '9856321470', 180001),
(220002, 'Vikas Singh', 'Vik@s321', '7865432190', 180002),
(220003, 'Neha Sharma', 'Neha@1234', '9765432180', 180003),
(220004, 'Alok Verma', 'Alok#789', '9856342170', 180004),
(220005, 'Suresh Gupta', 'Suresh@456', '9765423180', 180005),
(220006, 'Nisha Patel', 'Nish@#789', '9856732140', 180006),
(220007, 'Rajesh Singh', 'Rajesh123', '9867543210', 180007),
(220008, 'Anjali Pandey', 'Anjal@987', '7856342190', 180008),
(220009, 'Pooja Verma', 'Pooja456#', '9765432570', 180009),
(220010, 'Amit Shah', 'Amit@#123', '9856347210', 180010),
(220011, 'Vivek Mishra', 'Vivek123#', '7865431290', 180011),
(220012, 'Sanjay Gupta', 'Sanjay@789', '9765432185', 180012),
(220013, 'Aarti Patel', 'Aarti@#12', '9856324170', 180013),
(220014, 'Kamal Singh', 'Kamal#456', '9765432980', 180014),
(220015, 'Smita Singh', 'Smita@789', '7856432190', 180015),
(220016, 'Sandeep Yadav', 'Sandeep123#', '9856341260', 180016),
(220017, 'Renuka Patel', 'Renuka@#12', '9765432184', 180017),
(220018, 'Alok Singh', 'Alok#1234', '9856324190', 180018);

