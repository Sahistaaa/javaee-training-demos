package com.gd.objectmapper.run;

import java.io.File;
import java.util.Objects;

public class Util {
	public static File getFileFromResource(String filePath) {
	    ClassLoader classloader = Thread.currentThread().getContextClassLoader();
	    return new File(Objects.requireNonNull(classloader.getResource(filePath)).getFile());
	}
}
