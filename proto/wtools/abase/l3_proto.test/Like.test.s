( function _Like_test_s_( ) {

'use strict';

if( typeof module !== 'undefined' )
{
  let _ = require( '../../../wtools/Tools.s' );

  _.include( 'wTesting' );

  // if( !_.module.isIncluded( 'wProto' ) )
  // {
    require( '../../abase/l3_proto/Include.s' );
  // }

}
let _global = _global_;
let _ = _global_.wTools;

// --
// test
// --

function isLike( test )
{
  var self = this;

  var Base1 = _.like().end;
  var Base2 = _.like().end;
  var Mid = _.like( Base1, Base2 ).end;

  test.case = 'Base1 class like itself';
  var is = _.lconstruction.isLike( Base1, Base1 );
  test.is( is );

  test.case = 'Mid class like itself';
  var is = _.lconstruction.isLike( Mid, Mid );
  test.is( is );

  test.case = 'Mid class like one of parent';
  var is = _.lconstruction.isLike( Mid, Base1 );
  test.is( is );
  var is = _.lconstruction.isLike( Mid, Base2 );
  test.is( is );

  /* */

  test.case = 'base instance like base class';
  debugger;
  var base1 = Base1.constructor();
  debugger;
  var is = _.lconstruction.isLike( base1, Base1 );
  test.is( is );

  test.case = 'base instance like another base class';
  var base1 = Base1.constructor();
  var is = _.lconstruction.isLike( base1, Base2 );
  test.is( !is );

  test.case = 'mid instance like one of class';
  var mid = Mid.constructor();
  var is = _.lconstruction.isLike( mid, Mid );
  test.is( is );
  var is = _.lconstruction.isLike( mid, Base1 );
  test.is( is );
  var is = _.lconstruction.isLike( mid, Base2 );
  test.is( is );

}

// --
// declare
// --

let Self =
{

  name : 'Tools.l3.ProtoLike',
  silencing : 1,

  tests :
  {

    isLike,

  },

}

//

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

} )( );
