set(MICROPY_FROZEN_MANIFEST ${CMAKE_CURRENT_LIST_DIR}/manifest.py)

# ESP32-S3 with PSRAM support
set(SDKCONFIG_DEFAULTS
    ${PROJECT_SOURCE_DIR}/boards/sdkconfig.base
    ${PROJECT_SOURCE_DIR}/boards/sdkconfig.esp32s3
    ${PROJECT_SOURCE_DIR}/boards/sdkconfig.spiram
    ${CMAKE_CURRENT_LIST_DIR}/sdkconfig.camera
)

# Enable camera driver
set(IDF_COMPONENTS
    "esp32-camera"
    ${IDF_COMPONENTS}
)
