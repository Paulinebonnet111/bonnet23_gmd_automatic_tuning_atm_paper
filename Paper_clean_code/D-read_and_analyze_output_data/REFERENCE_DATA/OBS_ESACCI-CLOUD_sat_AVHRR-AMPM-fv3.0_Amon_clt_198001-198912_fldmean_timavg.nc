CDF      
      time       bnds      lon       lat             CDI       @Climate Data Interface version 2.2.4 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.6     source        Ihttps://public.satproj.klima.dwd.de/data/ESA_Cloud_CCI/CLD_PRODUCTS/v3.0/      title         5ESACCI-CLOUD data reformatted for the ESMValTool v2.0      tier            	reference         HStengel et al., Earth Syst. Sci. Data, doi:10.5194/essd-9-881-2017, 2017   user      b380103    host      l10390.lvt.dkrz.de     history      �Tue Jun 18 16:19:01 2024: cdo timavg OBS_ESACCI-CLOUD_sat_AVHRR-AMPM-fv3.0_Amon_clt_198001-198912_fldmean.nc OBS_ESACCI-CLOUD_sat_AVHRR-AMPM-fv3.0_Amon_clt_198001-198912_fldmean_timavg.nc
Mon Jun 17 12:37:12 2024: cdo timavg -selyear,1980/1989 -fldmean /work/bd0854/DATA/ESMValTool2/OBS/Tier2/ESACCI-CLOUD/OBS_ESACCI-CLOUD_sat_AVHRR-AMPM-fv3.0_Amon_clt_198201-201612.nc OBS_ESACCI-CLOUD_sat_AVHRR-AMPM-fv3.0_Amon_clt_198001-198912_fldmean.nc
Created on Thu Mar 21 14:56:32 CET 2024      conventions       CF/CMOR    CDO       @Climate Data Operators version 2.2.2 (https://mpimet.mpg.de/cdo)         time                standard_name         time   	long_name         time   bounds        	time_bnds      units         days since 1950-01-01 00:00:00     calendar      standard   axis      T           �   	time_bnds                             �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           x   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y           �   clt                       standard_name         cloud_area_fraction    	long_name         Total Cloud Fraction   units         %      
_FillValue        `�x�   missing_value         `�x�   cell_methods      
time: mean     comment       �for the whole atmospheric column, as seen from the surface or the top of the atmosphere. Include both large-scale and convective cloud.         �                @ɮ�    @��     @̉     B�f