##
#
# Download and initialize variable cxxopts_DIR
#

CMLIB_DEPENDENCY(
	URI "https://github.com/bringauto/nlohmann_json-package/releases/download/v3.9.1/libnlohmann-json-dev_v3.9.1_any.zip"
	TYPE ARCHIVE
	OUTPUT_PATH_VAR _nlohmann_json_ROOT
)

SET(nlohmann_json_ROOT "${_nlohmann_json_ROOT}"
	CACHE STRING
	"cxxopts root directory"
	FORCE
)

UNSET(_nlohmann_json_ROOT)

