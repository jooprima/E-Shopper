
CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `db_e-shopper`.`checkout` 
    AS
(SELECT
 `tbl_checkout`.`id_checkout` AS `id_checkout`,
 `tbl_barang`.`nama_produk`   AS `nama_produk`,
 `tbl_barang`.`harga`             AS `harga`,
 `tbl_barang`.`gambar`            AS `gambar`,
 `detail_checkout`.`jumlah`   AS `jumlah`,
 `tbl_user`.`nama_user`           AS `nama_user`,
 `tbl_checkout`.`id_user`         AS `id_user`
FROM `detail_checkout`
        JOIN `tbl_checkout`
          ON BINARY `detail_checkout`.`id_checkout`  = `tbl_checkout`.`id_checkout`
        JOIN `tbl_user`
         ON BINARY  `tbl_checkout`.`id_user` = `tbl_user`.`id`
  JOIN `tbl_barang`
        ON BINARY  `detail_checkout`.`id_barang` = `tbl_barang`.`id`);
