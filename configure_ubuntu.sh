#clear
reset

#you may want to decomment this the first time you compile
rm CMakeCache.txt

export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /opt/xerces-c-3.2.3/lib/pkgconfig"
# -DXercesC_INCLUDE_DIR:PATH="/opt/xerces-c-3.2.3/include" \
# -DXercesC_LIBRARY:PATH="/opt/xerces-c-3.2.3/lib" \

/opt/cmake-3.19.4/bin/cmake .. \
-DCMAKE_C_COMPILER=clang-14 \
-DCMAKE_CXX_COMPILER=clang++-14 \
-DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS}" \
-DCMAKE_C_FLAGS="${CMAKE_C_FLAGS}" \
-DFREECAD_USE_EXTERNAL_PIVY=1 \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="/opt/FreeCAD" \
-DCOIN3D_INCLUDE_DIRS:PATH="/opt/coin-4.0.0/include" \
-DCOIN3D_LIBRARIES:PATH="/opt/coin-4.0.0/lib/libCoin.so" \
-DOCC_INCLUDE_DIR:PATH="/opt/opencascade-7.3.0/include/opencascade" \
-DOCC_LIBRARY:FILEPATH="/opt/opencascade-7.3.0/lib" \
-DVTK_DIR:PATH="/opt/vtk-8.1.1/lib/cmake/vtk-8.1" \
-DXercesC_INCLUDE_DIR:PATH="/opt/xerces-c-3.2.3/include" \
-DXercesC_LIBRARY:PATH="/opt/xerces-c-3.2.3/lib/libxerces-c.so" \
-DMEDFILE_ROOT_DIR="/opt/med-3.3.1-nompi" \
-DHDF5_ROOT="/opt/hdf5-1.8.21-nompi" \
-DEIGEN3_INCLUDE_DIR="/opt/eigen-3.3.4/include/eigen3" \
-DPYTHON_EXECUTABLE=/usr/bin/python3.10 \
-DPython3_FIND_STRATEGY=LOCATION \
-DQt5_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5" \
-DQt5Core_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Core" \
-DQt5Network_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Network" \
-DQt5Xml_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Xml" \
-DQt5Patterns_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Patterns" \
-DQt5XmlPatterns_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5XmlPatterns" \
-DQt5Concurrent_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Concurrent" \
-DQt5Widgets_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Widgets" \
-DQt5PrintSupport_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5PrintSupport" \
-DQt5OpenGL_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5OpenGL" \
-DQt5Svg_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5Svg" \
-DQt5UiTools_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5UiTools" \
-DQt5WebEngineWidgets_DIR="/opt/Qt/5.15.2/gcc_64/lib/cmake/Qt5WebEngineWidgets" \

#decomment this to have it verbose
# make VERBOSE=1 -j4
# make install -j`nproc`

