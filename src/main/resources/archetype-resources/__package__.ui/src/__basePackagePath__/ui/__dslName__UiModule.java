#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
/*
 * generated by Xtext
 */
package ${basePackage}.ui;

import org.eclipse.ui.plugin.AbstractUIPlugin;

/**
 * Use this class to register components to be used within the IDE.
 */
public class ${dslName}UiModule extends ${basePackage}.ui.Abstract${dslName}UiModule {
	public ${dslName}UiModule(AbstractUIPlugin plugin) {
		super(plugin);
	}
}