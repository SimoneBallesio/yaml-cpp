project "yaml-cpp"
	kind "StaticLib"
	language "C++"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Build/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.cpp",
		"src/**.h",
		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"