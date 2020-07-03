vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO bfgroup/Lyra
    REF 9e31b213ffd8c66414623f0b26614326a5e12853 # 1.3
    SHA512 03ff1bfa19bd4dfb00cb864fac5275b075bc0b3c817d2598338b7b957d571799e531cd851cd451d2896ed920dc3037edd22dc14826b343ff6f76bfa2a7982589
    HEAD_REF master
)

file(COPY ${SOURCE_PATH}/include/lyra DESTINATION ${CURRENT_PACKAGES_DIR}/include)

configure_file(${SOURCE_PATH}/LICENSE.txt ${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright COPYONLY)