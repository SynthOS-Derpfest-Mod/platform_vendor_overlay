 # Overlays
DEVICE_PACKAGE_OVERLAYS += vendor/overlay/common

# Allow overlays to be excluded from enforcing RRO
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlay/common

# Lawnchair
ifeq ($(LAWNCHAIR_OPTOUT),)
PRODUCT_PACKAGE_OVERLAYS += vendor/overlay/lawnchair
endif

# Extra packages
PRODUCT_PACKAGES += \
    AOSiPOverlayStub \
    PrimaryColorAOSiPBlackOverlay \
    PrimaryColorAOSiPNatureOverlay \
    PrimaryColorAOSiPOceanOverlay \
    PrimaryColorCharcoalBlackOverlay \
    PrimaryColorLeadBlackOverlay \
    PrimaryColorSolarizedDarkOverlay \
    PrimaryFlameOverlay \
    PrimaryColorOneplusDarkOverlay \
    EmptyOverlay \
    MatchmakerOverlay

# NavigationBar Gestural Mode No Pill Overlays
PRODUCT_PACKAGES += \
    NavBarGesturalNoPillOverlay \
    NavBarGesturalNarrowBackNoPillOverlay \
    NavBarGesturalWideBackNoPillOverlay \
    NavBarGesturalExtraWideBackNoPillOverlay

# Prebuilts
$(call inherit-product-if-exists, vendor/prebuilts/packages.mk)
