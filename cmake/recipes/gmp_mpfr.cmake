# Source: https://github.com/libigl/libigl/blob/main/cmake/recipes/external/gmp_mpfr.cmake
if(WIN32)
  message(STATUS "Third-party: downloading gmp + mpfr")

  include(FetchContent)

  FetchContent_Declare(
    gmp
    URL https://cgal.geometryfactory.com/CGAL/precompiled_libs/auxiliary/x64/GMP/5.0.1/gmp-all-CGAL-3.9.zip
    URL_MD5 508c1292319c832609329116a8234c9f
  )
  FetchContent_MakeAvailable(gmp)

  FetchContent_Declare(
    mpfr
    URL https://cgal.geometryfactory.com/CGAL/precompiled_libs/auxiliary/x64/MPFR/3.0.0/mpfr-all-CGAL-3.9.zip
    URL_MD5 48840454eef0ff18730050c05028734b
  )
  FetchContent_MakeAvailable(mpfr)

  # For CGAL
  set(ENV{GMP_DIR} "${gmp_SOURCE_DIR}")
  set(ENV{MPFR_DIR} "${mpfr_SOURCE_DIR}")
else()
  # On Linux/macOS, gmp+mpfr will be fetched and compiled
endif()
