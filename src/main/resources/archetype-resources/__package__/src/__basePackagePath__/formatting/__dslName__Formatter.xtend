#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
/*
 * generated by Xtext
 */
package ${basePackage}.formatting

import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig
// import com.google.inject.Inject;
// import ${basePackage}.services.${dslName}GrammarAccess

/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html${symbol_pound}formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
class ${dslName}Formatter extends AbstractDeclarativeFormatter {

//	@Inject extension ${dslName}GrammarAccess
	
	override protected void configureFormatting(FormattingConfig c) {
// It's usually a good idea to activate the following three statements.
// They will add and preserve newlines around comments
//		c.setLinewrap(0, 1, 2).before(SL_COMMENTRule)
//		c.setLinewrap(0, 1, 2).before(ML_COMMENTRule)
//		c.setLinewrap(0, 1, 1).after(ML_COMMENTRule)
	}
}
