#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.tests

import com.google.inject.Inject
import ${basePackage}.${dslName}InjectorProvider
import ${package}.Heros
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Test
import org.junit.runner.RunWith

import static org.junit.Assert.*

@RunWith(XtextRunner)
@InjectWith(${dslName}InjectorProvider)
class SimpleParsingTest {
	
	@Inject extension ParseHelper<Heros>
	
	@Test def void testParse() {
		val heros = '''
			hero superman can FLY
			hero iceman can ICE
		'''.parse
		assertEquals(2, heros.heros.size)
	}
}