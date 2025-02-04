message("Setting oce-win-bundle depends...")

# Add dependencies between OCE and oce-win-bundle
if(OCE_WITH_FREEIMAGE)
    add_dependencies( TKService FreeImage )
    if(NOT BUNDLE_SHARED_LIBRARIES)
		TARGET_COMPILE_DEFINITIONS(TKService PRIVATE "-DFREEIMAGE_LIB")
	endif()
endif()

if (OCE_VISUALISATION)
    add_dependencies( TKOpenGl freetype )
    if (OCE_WITH_GL2PS)
          add_dependencies( TKOpenGl gl2ps )
    endif()
endif()

