include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(PA3_1_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(PA3_1_default_default_XC8_FILE_TYPE_assemble)
add_library(PA3_1_default_default_XC8_assemble OBJECT ${PA3_1_default_default_XC8_FILE_TYPE_assemble})
    PA3_1_default_default_XC8_assemble_rule(PA3_1_default_default_XC8_assemble)
    list(APPEND PA3_1_default_library_list "$<TARGET_OBJECTS:PA3_1_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(PA3_1_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(PA3_1_default_default_XC8_assemblePreprocess OBJECT ${PA3_1_default_default_XC8_FILE_TYPE_assemblePreprocess})
    PA3_1_default_default_XC8_assemblePreprocess_rule(PA3_1_default_default_XC8_assemblePreprocess)
    list(APPEND PA3_1_default_library_list "$<TARGET_OBJECTS:PA3_1_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(PA3_1_default_default_XC8_FILE_TYPE_compile)
add_library(PA3_1_default_default_XC8_compile OBJECT ${PA3_1_default_default_XC8_FILE_TYPE_compile})
    PA3_1_default_default_XC8_compile_rule(PA3_1_default_default_XC8_compile)
    list(APPEND PA3_1_default_library_list "$<TARGET_OBJECTS:PA3_1_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(PA3_1_default_image_W5o416ZI ${PA3_1_default_library_list})

set_target_properties(PA3_1_default_image_W5o416ZI PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${PA3_1_default_output_dir}")
target_link_libraries(PA3_1_default_image_W5o416ZI PRIVATE ${PA3_1_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
PA3_1_default_link_rule( PA3_1_default_image_W5o416ZI)


