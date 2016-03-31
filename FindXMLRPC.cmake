# CMake module to search for XMLRPC headers
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products 
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# If it's found it sets XMLRPC_FOUND to TRUE
# and following variables are set:
#    XMLRPC_INCLUDE_DIR
#    XMLRPC_LIBRARY
#    XMLRPC_CLIENT_LIBRARY
#    XMLRPC_UTIL_LIBRARY

# Locate header
FIND_PATH(XMLRPC_INCLUDE_DIR
    NAMES
        xmlrpc.h
        xmlrpc_client.h
    PATHS
        /usr/local/include
        /usr/include
        /usr/pkg/include
        $ENV{HOME}/pkg/include
        /opt/pkg/include
    #MSVC
        "$ENV{LIB_DIR}/include"
        $ENV{INCLUDE}
)

# Locate library
FIND_LIBRARY(XMLRPC_LIBRARY
    NAMES
        xmlrpc
        libxmlrpc 
    PATHS 
        /usr/local/lib
        /usr/lib
        /usr/lib64
        /usr/pkg/lib
        $ENV{HOME}/pkg/lib
        /opt/pkg/lib
    #MSVC
        "$ENV{LIB_DIR}/lib"
        $ENV{LIB}
)

FIND_LIBRARY(XMLRPC_CLIENT_LIBRARY
    NAMES
        xmlrpc_client
        libxmlrpc_client
    PATHS 
        /usr/local/lib
        /usr/lib
        /usr/lib64
        /usr/pkg/lib
        $ENV{HOME}/pkg/lib
        /opt/pkg/lib
    #MSVC
        "$ENV{LIB_DIR}/lib"
        $ENV{LIB}
)

FIND_LIBRARY(XMLRPC_UTIL_LIBRARY
    NAMES
        xmlrpc_util
        libxmlrpc_util
    PATHS 
        /usr/local/lib
        /usr/lib
        /usr/lib64
        /usr/pkg/lib
        $ENV{HOME}/pkg/lib
        /opt/pkg/lib
    #MSVC
        "$ENV{LIB_DIR}/lib"
        $ENV{LIB}
)

IF (XMLRPC_INCLUDE_DIR AND XMLRPC_LIBRARY)
    SET(XMLRPC_FOUND TRUE)
ELSE (XMLRPC_INCLUDE_DIR AND XMLRPC_LIBRARY)
    SET(XMLRPC_FOUND FALSE)
ENDIF (XMLRPC_INCLUDE_DIR AND XMLRPC_LIBRARY)

IF (XMLRPC_FOUND)
    MESSAGE(STATUS "Found xmlrpc headers: ${XMLRPC_INCLUDE_DIR}")
    MESSAGE(STATUS "Found xmlrpc libraries: ${XMLRPC_LIBRARY} ${XMLRPC_CLIENT_LIBRARY}")
ELSE (XMLRPC_FOUND)
    MESSAGE(FATAL_ERROR "Could not find xmlrpc")
ENDIF (XMLRPC_FOUND)
