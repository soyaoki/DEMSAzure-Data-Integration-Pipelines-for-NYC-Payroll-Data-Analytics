IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'dirstaging_adlsnycpayrollsoyaaoki_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [dirstaging_adlsnycpayrollsoyaaoki_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://dirstaging@adlsnycpayrollsoyaaoki.dfs.core.windows.net', 
		TYPE = HADOOP 
	)
GO

CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_Summary] (
	[FiscalYear] [int] NULL,
	[AgencyName] [varchar](50) NULL,
	[TotalPaid] [float] NULL
	)
	WITH (
	LOCATION = '/',
	DATA_SOURCE = [dirstaging_adlsnycpayrollsoyaaoki_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO
