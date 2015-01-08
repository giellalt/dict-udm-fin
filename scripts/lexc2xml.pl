#!/usr/bin/perl -w
use utf8 ;

# Simple script to convert csv to xml
# For input/outpus examples, see below.


print STDOUT "<r>\n";

while (<>) 
{
	chomp ;
#	my ($lemma, $POS, $trans, $trans2, $trans3) = split /\t/ ;
	my ($lemma, $CL) = split /\t/ ;
	print STDOUT "   <e order=\"2\">\n";
	print STDOUT "      <lg>\n";
	print STDOUT "         <l pos=\"N\">$lemma</l>\n";
	print STDOUT "         <stg>\n";
	print STDOUT "            <st Contlex=\"$CL\">$lemma</st>\n";
	print STDOUT "         </stg>\n";
	print STDOUT "      </lg>\n";
	print STDOUT "      <mg>\n";
	print STDOUT "      <defNative/>\n";
	print STDOUT "         <tg xml:lang=\"fin\">\n";
	print STDOUT "            <t pos=\"N\">XXX</t>\n";
	print STDOUT "         </tg>\n";
	print STDOUT "      </mg>\n";
	print STDOUT "   </e>\n";
}

print STDOUT "</r>\n";



# Example input:
#
# вокал	N_

#Target output:

#  <e order="2">
#    <lg>
#      <l pos="N">вокал</l>
#      <stg>
#        <st Contlex="N_">вокал</st>
#      </stg>
#    </lg>
#    <mg>
#      <defNative/>
#      <tg xml:lang="fin">
#        <t pos="N">XXX</t>
#      </tg>
#    </mg>
#  </e>


