BEGIN TRANSACTION;

-- 1. Etkinlik ekleme
BEGIN TRY
    INSERT INTO Etkinlikler (E_id, E_ad, Ot_id)
    VALUES (101, 'Yaz�l�m Geli�tirme At�lyesi', 24); 

    -- 2. Topluluk �ye say�s�n� g�ncelleme
    DECLARE @UyeSayisi INT;

    -- Bu toplulu�un (Ot_id = 24) �ye say�s�n� al�yoruz
    SELECT @UyeSayisi = COUNT(*) 
    FROM ToplulukUyeler 
    WHERE Ot_id = 24;

    -- Topluluklar�n �ye say�s�n� g�ncelleme
    UPDATE OgrenciTopluluklari
    SET Uye_Sayisi = @UyeSayisi
    WHERE Ot_id = 24; -- Toplulu�un �ye say�s� g�ncelleniyor

    -- 3. ��lem ba�ar�l�ysa commit
    COMMIT;
    
END TRY
BEGIN CATCH
    -- Bir hata durumunda rollback yap�l�r
    ROLLBACK;

    -- Hata bilgisi d�nd�r�l�r
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;