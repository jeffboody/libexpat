cmake_minimum_required(VERSION 3.4.1)

# Compiler options
add_compile_options(-Wall -DHAVE_MEMMOVE)

# Submodule library
add_library(expat
            STATIC

            # Source
            xmlrole.c
            xmltok.c
            xmltok_impl.c
            xmlparse.c
            xmltok_ns.c)

# Linking
target_link_libraries(expat

                      # NDK libraries
                      log)
