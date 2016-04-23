local action = _ACTION or ""

solution "picasso"
	location ( "proj" )
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
        targetdir("bin")
		defines { "EXPORT" }
		includedirs { "include","build","src","src/include","src/simd","src/gfx"}
		files {"src/core/*.cpp", "src/gfx/*.cpp", "src/*.cpp"}
		links {"freetype", "fontconfig"}

	
    project "zlib"
        language "C"
        kind "SharedLib"
        targetdir("bin")
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

    project "png"
        language "C"
        kind "SharedLib"
        targetdir("bin")
        includedirs {"third_party/libpng-1.6.17"}
        libdirs { "bin" }
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

  
    project "gif"
        language "C"
        kind "SharedLib"
        targetdir("bin")
        includedirs {"third_party/giflib-5.1.3/lib"}
        files {"third_party/giflib-5.1.3/lib/*.c"}
        
            
    project "jpeg"
        language "C"
        kind "SharedLib"
        targetdir("bin")
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
       
       
    project "psx_image"
        language "C"
            kind "SharedLib"
            targetdir("bin")
            includedirs {"include", "build" , "ext/image_loader"}
            libdirs {"bin"}
            links {"picasso2_sw"}
            files {"ext/image_loader/*.c"}
            configuration { "linux" }
                links { "dl" }
        
    project "psxm_image_gif"
        language "C"
            targetdir("bin/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader" , "third_party/giflib-5.1.3/lib"}
            files {"ext/image_loader/gif/*.c"}
            libdirs {"bin"}
            links { "gif", "psx_image"}
            configuration { "linux" }
                links { "dl" }          
                linkoptions { " -Wl,-rpath=../" }
             
    project "psxm_image_jpeg"
        language "C"
            targetdir("bin/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader" , "third_party/libjpeg-turbo-1.4.1", "third_party/libjpeg-turbo-1.4.1/build", "third_party/libjpeg-turbo-1.4.1/simd"}
            files {"ext/image_loader/jpeg/*.c"}
            libdirs {"bin"}
            links { "jpeg", "psx_image"}
            configuration { "linux" }
                links { "dl" }
                linkoptions { " -Wl,-rpath=../" }        
         
    project "psxm_image_png"
        language "C"
            targetdir("bin/modules")
            kind "SharedLib"
            defines {"EXPORT"}
            includedirs {"include", "build", "ext/image_loader"}
            files {"ext/image_loader/png/*.c"}
            links { "png", "psx_image"}
            
            configuration {"windows"}
                includedirs {"third_party/libpng-1.6.17"}
                libdirs {"bin"}
            
            configuration { "linux" } --png 1.6.17 crash with png 1.2.54 that gtk2.0 rely on.
                links { "dl" }
            
    project "blur"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/blur_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
			    linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}
                
    project "shadow"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/shadow_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "text"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/text_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}
                
    project "threads"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/thread_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c", "test/thr_posix.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"pthread", "z", "freetype"}
                
    project "image_info"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/image_info.c"}
            links { "picasso2_sw", "psx_image"}
            
            configuration { "linux" }
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype", "fontconfig", "dl"}

    project "image_view"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/image_view.c"}
            links { "picasso2_sw", "psx_image"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype", "dl"}

    project "pattern"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/pattern_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}
                
    project "path"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/path_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}                
                
    project "part"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/part_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}    
                
    project "mask"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/mask_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}    

    project "gradient"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/gradient_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"} 

    project "gcstate"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/gcstate_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "gamma"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/gamma_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "composite"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/composite_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "clip"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/clip_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "bitblt"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/bitblt_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "alpha"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"test/alpha_func.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"test/testGtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}
                
    project "clock"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"demos/clock.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"demos/platform_gtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "flowers"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"demos/flowers.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"demos/platform_gtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "subwaymap"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"demos/subwaymap.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"demos/platform_gtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}

    project "tiger"
        language "C"
            targetdir("bin")
            kind "WindowedApp"
            includedirs {"include", "build", "test"}
            libdirs {"bin"}
            files {"demos/tiger.c"}
            links { "picasso2_sw"}
            
            configuration { "linux" }
                files{"demos/platform_gtk2.c"}
                buildoptions {"`pkg-config --cflags gtk+-2.0`" }
                linkoptions { "`pkg-config --libs gtk+-2.0`" , " -Wl,-rpath=./" }
                links {"z", "freetype"}