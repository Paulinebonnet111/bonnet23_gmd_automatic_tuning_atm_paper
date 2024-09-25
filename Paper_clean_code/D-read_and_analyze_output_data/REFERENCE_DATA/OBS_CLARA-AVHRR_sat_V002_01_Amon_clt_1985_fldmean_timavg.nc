CDF      
      time       bnds      lon       lat             CDI       @Climate Data Interface version 2.2.4 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.6     source        https://wui.cmsaf.eu/      title         4CLARA-AVHRR data reformatted for the ESMValTool v2.0   tier            	reference         6https://doi.org/10.5676/EUM_SAF_CM/CLARA_AVHRR/V002_01     comment      UThe CM SAF data are owned by EUMETSAT and are available to all users free of charge and with no conditions to use. If you wish to use these products, EUMETSAT's copyright credit must be shown by displaying the words 'Copyright (c) (2020) EUMETSAT' under/in each of these SAF Products used in a project or shown in a publication or website. Please follow the citation guidelines given at https://doi.org/10.5676/EUM_SAF_CM/CLARA_AVHRR/V002_01 and also register as a user at http://cm-saf.eumetsat.int/ to receive latest information on CM SAF services and to get access to the CM SAF User Help Desk.      user      b380103    host      mistralpp3.hpc.dkrz.de     history      YThu Aug 08 13:41:25 2024: cdo fldmean -timavg OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_1985.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_1985_fldmean_timavg.nc
Thu Aug 08 13:40:56 2024: cdo mergetime OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198501.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198503.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198504.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198505.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198506.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198507.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198508.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198509.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198510.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198511.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198512.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_1985.nc
Thu Aug 08 13:39:17 2024: cdo splitmon OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_1985.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_1985
Wed Jun 26 10:29:28 2024: cdo splityear OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198201-199112_fldmean.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_
Wed Jun 19 10:41:08 2024: cdo -selyear,1982/1991 -fldmean /work/bd0854/DATA/ESMValTool2/OBS/Tier3/CLARA-AVHRR/OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198201-201812.nc OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198201-199112_fldmean.nc
Thu Jan 12 12:17:23 2023: ncatted -a cell_measures,clt,d,, /work/bd0854/DATA/ESMValTool2/OBS/Tier3/CLARA-AVHRR/OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198201-201812.nc
Thu Jan 12 12:17:08 2023: ncatted -a cell_methods,clt,m,c,time: mean /work/bd0854/DATA/ESMValTool2/OBS/Tier3/CLARA-AVHRR/OBS_CLARA-AVHRR_sat_V002_01_Amon_clt_198201-201812.nc
Created on Thu May  6 14:13:14 CEST 2021      conventions       CF/CMOR    NCO       _netCDF Operators version 5.0.6 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    CDO       @Climate Data Operators version 2.2.2 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1950-01-01 00:00:00     calendar      standard   axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y           �   clt                       standard_name         cloud_area_fraction    	long_name         Total Cloud Fraction   units         %      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     comment       �for the whole atmospheric column, as seen from the surface or the top of the atmosphere. Include both large-scale and convective cloud.         �                @�Z@    @��     @ɮ�    B{��