# Version data that need review and possible modification for each release.
set(DATADRAW_VERSION_MAJOR "3")
set(DATADRAW_VERSION_MINOR "1")
set(DATADRAW_SVN_REVISION "$Revision$")
set(DATADRAW_VERSION_PATCH ${DATADRAW_SVN_REVISION})
set(DATADRAW_VERSION_STRING "${DATADRAW_VERSION_MAJOR}.${DATADRAW_VERSION_MINOR}.${DATADRAW_VERSION_PATCH}")


# CPack version numbers for release tarball name.
set(CPACK_PACKAGE_VERSION_MAJOR "${DATADRAW_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${DATADRAW_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION_PATCH "${DATADRAW_VERSION_PATCH}")


if( NOT EXISTS config.h OR cmake/version.cmake IS_NEWER_THAN config.h )
  file(WRITE  config.h "/* config.h.  Generated by \"version.cmake\".  */\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Name of package */\n")
  file(APPEND config.h "#define PACKAGE \"${PROJECT_NAME}\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Define to the address where bug reports for this package should be sent. */\n")
  file(APPEND config.h "#define PACKAGE_BUGREPORT \"\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Define to the full name of this package. */\n")
  file(APPEND config.h "#define PACKAGE_NAME \"\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Define to the full name and version of this package. */\n")
  file(APPEND config.h "#define PACKAGE_STRING \"\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Define to the one symbol short name of this package. */\n")
  file(APPEND config.h "#define PACKAGE_TARNAME \"\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Define to the version of this package. */\n")
  file(APPEND config.h "#define PACKAGE_VERSION \"\"\n")
  file(APPEND config.h "\n")
  file(APPEND config.h "/* Version number of package */\n")
  file(APPEND config.h "#define VERSION \"${DATADRAW_VERSION_STRING}\"\n")
  file(APPEND config.h "\n")
endif( NOT EXISTS config.h OR cmake/version.cmake IS_NEWER_THAN config.h )