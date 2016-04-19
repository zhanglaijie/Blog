package top.laijie.blogs.tool;

import java.io.File;
import java.util.List;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;

/**
 * 配置文件工具类. 从classpath:/properties中加载所有.properties文件.
 * @author minwh
 *
 */
public abstract class ConfigReader {

	private static final Logger log = LoggerFactory.getLogger(ConfigReader.class);

	private static PropertiesConfiguration configuration = new PropertiesConfiguration() {{
		try {
			final File propertyFile = new ClassPathResource("/config.properties").getFile();
			log.debug("加载配置文件：{}", propertyFile.getAbsolutePath());
			load(propertyFile);
		} catch (final Exception e) {
			log.error("加载配置文件失败", e);
		}
	}};

	private ConfigReader() {}

	public static PropertiesConfiguration reloadConfiguration() {
		configuration = new PropertiesConfiguration() {{
			try {
				final File propertyFile = new ClassPathResource("/config.properties").getFile();
				log.info("加载配置文件：{}", propertyFile.getAbsolutePath());
				load(propertyFile);
			} catch (final Exception e) {
				log.error("加载配置文件失败", e);
			}
		}};
		return configuration;
	}
	
	/**
	 * 从配置文件中读取、添加配置信息.
	 * 
	 * @param file 配置文件
	 */
	public static boolean addConfiguration(final File file) {
		try {
			configuration.load(file);
		} catch (final ConfigurationException e) {
			return false;
		}
		return true;
	}

	public static String get(final String key) {
		return configuration.getString(key);
	}

	public static String get(final String key, final String defaultValue) {
		return configuration.getString(key, defaultValue);
	}

	public static boolean getBoolean(final String key) {
		return configuration.getBoolean(key);
	}

	public static boolean getBoolean(final String key, final boolean defaultValue) {
		return configuration.getBoolean(key, defaultValue);
	}

	public static int getInt(final String key) {
		return configuration.getInt(key);
	}

	public static int getInt(final String key, final int defaultValue) {
		return configuration.getInt(key, defaultValue);
	}

	public static double getDouble(final String key) {
		return configuration.getDouble(key);
	}

	public static double getDouble(final String key, final double defaultValue) {
		return configuration.getDouble(key, defaultValue);
	}

	public static long getLong(final String key) {
		return configuration.getLong(key);
	}

	public static long getLong(final String key, final long defaultValue) {
		return configuration.getLong(key, defaultValue);
	}

	public static List<String> getList(final String key) {
		return configuration.getList(key);
	}

	public static List<String> getList(final String key, final List<String> defaultValue) {
		return configuration.getList(key, defaultValue);
	}

	public static String[] getStringArray(final String key) {
		return configuration.getStringArray(key);
	}

	public static void main(final String[] args) throws ConfigurationException {
		System.out.println(ConfigReader.get("log4j.rootLogger"));
	}
}
