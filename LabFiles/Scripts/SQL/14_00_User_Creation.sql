--RUN FROM MASTER
CREATE LOGIN CEO WITH PASSWORD = 'Demo@pass123';
CREATE USER CEO FOR LOGIN CEO;

CREATE LOGIN DataAnalystMiami WITH PASSWORD = 'Demo@pass123';
CREATE USER DataAnalystMiami FOR LOGIN DataAnalystMiami;

CREATE LOGIN DataAnalystSanDiego WITH PASSWORD = 'Demo@pass123';
CREATE USER DataAnalystSanDiego FOR LOGIN DataAnalystSanDiego;

-------------------------------------------------------------------
--Run from SQLPOOL

CREATE USER CEO FOR LOGIN CEO;
CREATE USER DataAnalystMiami FOR LOGIN DataAnalystMiami;
CREATE USER DataAnalystSanDiego FOR LOGIN DataAnalystSanDiego;