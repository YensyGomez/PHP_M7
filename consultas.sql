-- select * from ampolla.DireccionProv;
-- insert into  ampolla.DireccionProv(Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais) Values ('114c', 11, 'A', '33', 'madrid', '063678', 'españa');
-- insert into  ampolla.DireccionProv(Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais) Values ('117a', 15, '1a', '31B', 'paris', '00000', 'Francia');
-- insert into  ampolla.DireccionProv(Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais) Values ('233cr', 21, '3a', '84B', 'roma', '064000', 'Italia');
-- insert into  ampolla.DireccionProv(Calle, Numero, Piso, Puerta, Ciudad, CodigoPostal, Pais) Values ('g45', 8, '2a', '3pc', 'atenas', '078967', 'grecia')

-- select * from ampolla.Provedor;

-- insert into ampolla.Provedor(Nombre, Telefono, Fax, NIF, DireccionProv_idDireccionProvedor) values ('opticasinGafas', '31111111', '666666666', 'jualiacb65' , 1);
-- insert into ampolla.Provedor(Nombre, Telefono, Fax, NIF, DireccionProv_idDireccionProvedor) values ('Happyeyes', '34444444 ', '22222222',' velez3675' , 2);
-- insert into ampolla.Provedor(Nombre, Telefono, Fax, NIF, DireccionProv_idDireccionProvedor) values ('vision', '3999999', '6888888','sopo3675' , 3);
-- insert into ampolla.Provedor(Nombre, Telefono, Fax, NIF, DireccionProv_idDireccionProvedor) values ('gafas&gafas', '3333335', '63567458', 'es32675' , 4);

-- select * from ampolla.Marcas;
-- insert into ampolla.Marcas(Nombre, Provedor_idProvedor) values ("Ray-Ban", 1);
-- insert into ampolla.Marcas(Nombre, Provedor_idProvedor) values ("Oakley", 2);
-- insert into ampolla.Marcas(Nombre, Provedor_idProvedor) values ("Polaroid", 3);
-- insert into ampolla.Marcas(Nombre, Provedor_idProvedor) values ("Tous", 4);
-- insert into ampolla.Marcas(Nombre, Provedor_idProvedor) values ("Totto", 1);

-- select * from ampolla.Gafas;
-- insert into ampolla.Gafas(Montura, precio, colorIzq, colorDer, gradIzq, gradDer, Marcas_idMarcas) 
-- value ('Pasta', 100000, 'azul', 'Morado', '1.0', '2.0', 1);
-- insert into ampolla.Gafas(Montura, precio, colorIzq, colorDer, gradIzq, gradDer, Marcas_idMarcas) 
-- value ('Pasta', 150000, 'Morado', 'Yellow', '2.0', '3.0', 2);
-- insert into ampolla.Gafas(Montura, precio, colorIzq, colorDer, gradIzq, gradDer, Marcas_idMarcas) 
-- value ('Pasta', 110000, 'negro', 'negro', '3.0', '4.0', 3);
-- insert into ampolla.Gafas(Montura, precio, colorIzq, colorDer, gradIzq, gradDer, Marcas_idMarcas) 
-- value ('Pasta',120000, 'blanco', 'negro', '3.0', '4.0', 4);
-- insert into ampolla.Gafas(Montura, precio, colorIzq, colorDer, gradIzq, gradDer, Marcas_idMarcas) 
-- value ('Pasta',150000, 'negro', 'negro', '3.0', '4.0', 1);



-- select *from ampolla.Cliente; 

-- insert into ampolla.Cliente(Nombre, Direccion, Telefono, Email, FechaRegistro) value('Julio Vargas', 'vereda la florida', '3224567', 'jh@gmail.com', '2021-01-12');
-- insert into ampolla.Cliente(Nombre, Direccion, Telefono, Email, FechaRegistro, Cliente_idCliente) value('Manu Vargas', 'vereda la florida', '3224567', 'mn@gmail.com', '2021-01-12', 6);
-- insert into ampolla.Cliente(Nombre, Direccion, Telefono, Email, FechaRegistro, Cliente_idCliente) value('Julieta Vargas', 'vereda la florida', '3224567', 'mn@gmail.com', '2021-01-12', 7);
-- insert into ampolla.Cliente(Nombre, Direccion, Telefono, Email, FechaRegistro, Cliente_idCliente) value('Manuel giraldo', 'barcelona berlin 34', '38679407', 'mg@gmail.com', '2021-02-17', 7);
-- insert into ampolla.Cliente(Nombre, Direccion, Telefono, Email, FechaRegistro, Cliente_idCliente) value('Helena Gomez', 'barcelona numancia 39', '65432167', 'hg@gmail.com', '2021-02-17', 8);


-- select * from ampolla.Vendedor;
-- insert into ampolla.Vendedor (NombreVendedor) value ('Carlos Lopez');
-- insert into  ampolla.Vendedor(NombreVendedor) value ('Laura Mejia');

-- select *from ampolla.Venta;

-- insert into  ampolla.Venta(Cliente_idCliente, Vendedor_idVendedor) value (6, 1);
-- insert into  ampolla.Venta(Cliente_idCliente, Vendedor_idVendedor) value (7, 1);
-- insert into  ampolla.Venta(Cliente_idCliente, Vendedor_idVendedor) value (8, 2);
-- insert into  ampolla.Venta(Cliente_idCliente, Vendedor_idVendedor) value (9, 2);
-- insert into  ampolla.Venta(Cliente_idCliente, Vendedor_idVendedor) value (10, 1);



-- SELECT Nombre
-- FROM ampolla.Gafas
-- INNER JOIN ampolla.Marcas
-- ON ampolla.Marcas.idMarcas =ampolla.Gafas.Marcas_idMarcas;








  








 


