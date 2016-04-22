local action = _ACTION or ""

solution "picasso"
	location ( "pmbuild" )
	configurations { "Debug", "Release" }
	platforms {"x64", "x32"}
    configuration "Debug"
		defines { "_DEBUG" , "ENABLE_FREE_TYPE2=1", "ENABLE_FONT_CONFIG=1"}
		flags { "Symbols", "ExtraWarnings", "EnableSSE2"}

	configuration "Release"
		defines { "NDEBUG" , "ENABLE_FREE_TYPE2=1", "ENABLE_FONT_CONFIG=1"}
		flags { "Optimize", "ExtraWarnings", "EnableSSE2"}

	project "picasso2_sw"
		language "C++"
		kind "SharedLib"
        targetdir("pmbuild")
		defines { "EXPORT" }
		includedirs { "include","build","src","src/include","src/simd","src/gfx"}
		files {"src/core/*.cpp", "src/gfc/*.cpp", "src/*.cpp"}
		links {"freetype", "fontconfig"}
		
        configuration "x64"
            defines { "IS_64BIT" }
	
    project "zlib"
        language "C"
        kind "SharedLib"
        targetdir("pmbuild")
        includedirs {"third_party/zlib-1.2.8"}
        defines {"ZLIB_DLL"}
        files { "third_party/zlib-1.2.8/adler32.c",
                "third_party/zlib-1.2.8/compress.c",
                "third_party/zlib-1.2.8/crc32.c",
                "third_party/zlib-1.2.8/deflate.c",
                "third_party/zlib-1.2.8/infback.c",
                "third_party/zlib-1.2.8/inffast.c",
                "third_party/zlib-1.2.8/inflate.c",
                "third_party/zlib-1.2.8/inftrees.c",
                "third_party/zlib-1.2.8/trees.c",
                "third_party/zlib-1.2.8/uncompr.c",
                "third_party/zlib-1.2.8/zutil.c" }
        
        configuration "Debug"
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			flags { "Optimize", "ExtraWarnings"}
    project "png"
        language "C"
        kind "SharedLib"
        targetdir("pmbuild")
        includedirs {"third_party/libpng-1.6.17"}
        libdirs { "pmbuild" }
        defines {"ZLIB_DLL"}
        links{ "zlib" }
        files{"third_party/libpng-1.6.17/png.c",
            "third_party/libpng-1.6.17/pngerror.c",
            "third_party/libpng-1.6.17/pngget.c",
            "third_party/libpng-1.6.17/pngmem.c",
            "third_party/libpng-1.6.17/pngpread.c",
            "third_party/libpng-1.6.17/pngread.c",
            "third_party/libpng-1.6.17/pngrio.c",
            "third_party/libpng-1.6.17/pngrtran.c",
            "third_party/libpng-1.6.17/pngrutil.c",
            "third_party/libpng-1.6.17/pngset.c",
            "third_party/libpng-1.6.17/pngtrans.c",
            "third_party/libpng-1.6.17/pngwio.c",
            "third_party/libpng-1.6.17/pngwrite.c",
            "third_party/libpng-1.6.17/pngwtran.c",
            "third_party/libpng-1.6.17/pngwutil.c"}
        configuration "Debug"
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			flags { "Optimize", "ExtraWarnings"}
  
    project "gif"
        language "C"
        kind "SharedLib"
        targetdir("pmbuild")
        includedirs {"third_party/giflib-5.1.3/lib"}
        files {"third_party/giflib-5.1.3/lib/*.c"}
        
        configuration "Debug"
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			flags { "Optimize", "ExtraWarnings"}
            
    project "jpeg"
        language "C"
        kind "SharedLib"
        targetdir("pmbuild")
        includedirs{"third_party/libjpeg-turbo-1.4.1", "third_party/libjpeg-turbo-1.4.1/build", "third_party/libjpeg-turbo-1.4.1/simd"}
        files {"third_party/libjpeg-turbo-1.4.1/jcapimin.c",
            "third_party/libjpeg-turbo-1.4.1/jcapistd.c",
            "third_party/libjpeg-turbo-1.4.1/jccoefct.c",
            "third_party/libjpeg-turbo-1.4.1/jccolor.c",
            "third_party/libjpeg-turbo-1.4.1/jcdctmgr.c",
            "third_party/libjpeg-turbo-1.4.1/jchuff.c",
            "third_party/libjpeg-turbo-1.4.1/jcinit.c",
            "third_party/libjpeg-turbo-1.4.1/jcmainct.c",
            "third_party/libjpeg-turbo-1.4.1/jcmarker.c",
            "third_party/libjpeg-turbo-1.4.1/jcmaster.c",
            "third_party/libjpeg-turbo-1.4.1/jcomapi.c",
            "third_party/libjpeg-turbo-1.4.1/jcparam.c",
            "third_party/libjpeg-turbo-1.4.1/jcphuff.c",
            "third_party/libjpeg-turbo-1.4.1/jcprepct.c",
            "third_party/libjpeg-turbo-1.4.1/jcsample.c",
            "third_party/libjpeg-turbo-1.4.1/jctrans.c",
            "third_party/libjpeg-turbo-1.4.1/jdapimin.c",
            "third_party/libjpeg-turbo-1.4.1/jdapistd.c",
            "third_party/libjpeg-turbo-1.4.1/jdatadst.c",
            "third_party/libjpeg-turbo-1.4.1/jdatasrc.c",
            "third_party/libjpeg-turbo-1.4.1/jdcoefct.c",
            "third_party/libjpeg-turbo-1.4.1/jdcolor.c",
            "third_party/libjpeg-turbo-1.4.1/jddctmgr.c",
            "third_party/libjpeg-turbo-1.4.1/jdhuff.c",
            "third_party/libjpeg-turbo-1.4.1/jdinput.c",
            "third_party/libjpeg-turbo-1.4.1/jdmainct.c",
            "third_party/libjpeg-turbo-1.4.1/jdmarker.c",
            "third_party/libjpeg-turbo-1.4.1/jdmaster.c",
            "third_party/libjpeg-turbo-1.4.1/jdmerge.c",
            "third_party/libjpeg-turbo-1.4.1/jdphuff.c",
            "third_party/libjpeg-turbo-1.4.1/jdpostct.c",
            "third_party/libjpeg-turbo-1.4.1/jdsample.c",
            "third_party/libjpeg-turbo-1.4.1/jdtrans.c",
            "third_party/libjpeg-turbo-1.4.1/jerror.c",
            "third_party/libjpeg-turbo-1.4.1/jfdctflt.c",
            "third_party/libjpeg-turbo-1.4.1/jfdctfst.c",
            "third_party/libjpeg-turbo-1.4.1/jfdctint.c",
            "third_party/libjpeg-turbo-1.4.1/jidctflt.c",
            "third_party/libjpeg-turbo-1.4.1/jidctfst.c",
            "third_party/libjpeg-turbo-1.4.1/jidctint.c",
            "third_party/libjpeg-turbo-1.4.1/jidctred.c",
            "third_party/libjpeg-turbo-1.4.1/jquant1.c",
            "third_party/libjpeg-turbo-1.4.1/jquant2.c",
            "third_party/libjpeg-turbo-1.4.1/jutils.c",
            "third_party/libjpeg-turbo-1.4.1/jmemmgr.c",
            "third_party/libjpeg-turbo-1.4.1/jmemnobs.c",
            "third_party/libjpeg-turbo-1.4.1/jaricom.c",
            "third_party/libjpeg-turbo-1.4.1/jcarith.c",
            "third_party/libjpeg-turbo-1.4.1/jdarith.c",
            "third_party/libjpeg-turbo-1.4.1/turbojpeg.c",
            "third_party/libjpeg-turbo-1.4.1/transupp.c",
            "third_party/libjpeg-turbo-1.4.1/jdatadst-tj.c",
            "third_party/libjpeg-turbo-1.4.1/jdatasrc-tj.c",
            "third_party/libjpeg-turbo-1.4.1/jsimd_none.c"}
        configuration "Debug"
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			flags { "Optimize", "ExtraWarnings"}
       
       
    project "psx_image"
        language "C"
            kind "SharedLib"
            targetdir("pmbuild")
            includedirs {"include", "build" , "ext/image_loader"}
            libdirs {"pmbuild"}
            links {"picasso2_sw", "dl"}
            files {"ext/image_loader/*.c"}
            
            configuration "Debug"
                flags { "Symbols", "ExtraWarnings"}

            configuration "Release"
                flags { "Optimize", "ExtraWarnings"}
                
        
    project "psxm_image_gif"
        language "C"
            targetdir("pmbuild/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader" , "third_party/giflib-5.1.3/lib"}
            files {"ext/image_loader/gif/*.c"}
            libdirs {"pmbuild"}
            links { "gif", "psx_image", "dl"}
            configuration "Debug"
                flags { "Symbols", "ExtraWarnings"}

            configuration "Release"
                flags { "Optimize", "ExtraWarnings"}
                
                
                
             
    project "psxm_image_jpeg"
        language "C"
            targetdir("pmbuild/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader" , "third_party/libjpeg-turbo-1.4.1", "third_party/libjpeg-turbo-1.4.1/build", "third_party/libjpeg-turbo-1.4.1/simd"}
            files {"ext/image_loader/jpeg/*.c"}
            libdirs {"pmbuild"}
            links { "jpeg", "psx_image", "dl"}
            configuration "Debug"
                flags { "Symbols", "ExtraWarnings"}

            configuration "Release"
                flags { "Optimize", "ExtraWarnings"}
         
         
    project "psxm_image_png"
        language "C"
            targetdir("pmbuild/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader" , "third_party/libpng-1.6.17"}
            files {"ext/image_loader/png/*.c"}
            libdirs {"pmbuild"}
            links { "png", "psx_image", "dl"}
            configuration "Debug"
                flags { "Symbols", "ExtraWarnings"}

            configuration "Release"
                flags { "Optimize", "ExtraWarnings"}