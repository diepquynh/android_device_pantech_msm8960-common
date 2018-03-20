# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ril.subscription.types=NV,RUIM \
	ro.ril.transmitpower=true \
	ro.telephony.call_ring.multiple=0 \
	persist.radio.adb_log_on=1 \
	persist.radio.add_power_save=1 \
	persist.radio.snapshot_disabled=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.use_se_table_only=1 \
	persist.radio.fill_eons=1 \
	persist.radio.kickstart=on

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=false \
	persist.rmnet.mux=disabled

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
	DEVICE_PROVISIONED=1 \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	persist.data_netmgrd_mtu=1440
