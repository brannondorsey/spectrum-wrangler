-- spectrum-wrangler/load.py creates a geo index on lat & long, but these are 
-- some additional indexes that may be useful if you intend to query the 
-- database in non-geographic ways.

-- index on callsign
CREATE INDEX idx_callsign ON fcclicenses (callsign);

-- index on license status (e.g.  Expired, Terminated, Active, and Cancelled)
CREATE INDEX idx_rollup_status_desc ON fcclicenses (rollup_status_desc);

-- index on radio service (e.g. Broadcast Auxiliary Low Power, FM Station, etc.)
CREATE INDEX idx_radio_service_desc ON fcclicenses (radio_service_desc);

-- index on station category (e.g. Broadcast, Paging and Messaging, Radar, etc.)
CREATE INDEX idx_rollup_category_code ON fcclicenses (rollup_category_code);

-- index on station license zip code
CREATE INDEX idx_lic_zip_code ON fcclicenses (lic_zip_code);

-- index on antenna type (e.g.  Directional, Hub, Directional Composite, etc.)
CREATE INDEX idx_ant_type_desc ON fcclicenses (ant_type_desc);

-- http://wiki.radioreference.com/index.php/FCC_Station_Class_Codes
CREATE INDEX idx_freq_class_station_code ON fcclicenses (freq_class_station_code);

-- index on antenna power ERP
CREATE INDEX idx_power_erp ON fcclicenses (power_erp);

-- index on power output
CREATE INDEX idx_power_output ON fcclicenses (power_output);

-- index on frequency in MHz or KHz
CREATE INDEX idx_frequency_assigned ON fcclicenses (frequency_assigned);

-- index on unit of measure (MHz or KHz)
CREATE INDEX idx_unit_of_measure ON fcclicenses (unit_of_measure);

-- index on antenna height
CREATE INDEX idx_ground_elevation ON fcclicenses (ground_elevation);






