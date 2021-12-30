USE [controleponto]
GO

/****** Object:  StoredProcedure [dbo].[Proc_departamento]    Script Date: 30/12/2021 11:01:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Proc_departamento]( @vDepartamentoID INT, @VResponsavel varchar(20), @VLogin varchar (10), @VEmail varchar (20))

AS
BEGIN

declare @Existe int  =0 
declare @Retorno varchar(50)=''


set @Existe= (select count(1) from [controleponto].[dbo].[TapDepartamento] where DepartamentoID  = @vDepartamentoID)


if ( @Existe = 0) /* se não existe Insere um novo*/
  begin
     Insert into [controleponto].[dbo].[TapDepartamento] (DepartamentoID, Responsavel,Login, Email) values (@vDepartamentoID, @VResponsavel, @VLogin, @VEmail)
	 set @Retorno='Registro Inserido' 
  end
  else begin /* se  existe Altera*/
			Update [controleponto].[dbo].[TabDepartamento] 
			set 
				Responsavel = @VResponsavel,
				Login = @VLogin,
				Email = @VEmail
								
				where DepartamentoID = @vDepartamentoID 	 
			set @Retorno='Registro Alterado'
       end

	select @Retorno RETORNO
END
GO


