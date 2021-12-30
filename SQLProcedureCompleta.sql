declare @Existe int  =0 
declare @Retorno varchar(50)=''
/* Teste se o codigo 0001 existe*/
set @Existe= (select count(1) from [controleponto].[dbo].[TapDepartamento] where DepartamentoID  = '2')


if ( @Existe = 0) /* se não existe Insere um novo*/
  begin
     Insert into [controleponto].[dbo].[TapDepartamento] (DepartamentoID, Responsavel,Login, Email) values ('2', 'apolinario', 'sistema','leal@gmail.com')
	 set @Retorno='Registro Inserido' 
  end
  else begin /* se  existe Altera*/
			Update [controleponto].[dbo].[TapDepartamento] 
			set DepartamentoID = '1', 
				Responsavel = 'Leal',
				Login = 'teste',
				Email = 'teste@gmail.com'
								
				where DepartamentoID = '1'  	 
			set @Retorno='Registro Alterado'
       end