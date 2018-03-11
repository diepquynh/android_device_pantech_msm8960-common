# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	rild.libargs=-d /dev/smd0 \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3= \
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
