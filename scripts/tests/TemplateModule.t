# --
# TemplateModule.t - unittests for template
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: TemplateModule.t,v 1.1.1.1 2008-09-22 13:19:20 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

use strict;
use warnings;
use utf8;

use vars qw($Self);

#use Kernel::System::Ticket;

# check needed objects
for my $Object (qw(ConfigObject DBObject LogObject TimeObject MainObject EncodeObject)) {
    die "Got no $Object!" if !$Self->{$Object};
}

#$Self->{TicketObject} = Kernel::System::Ticket->new( %{$Self} );

# ------------------------------------------------------------ #
# make preparations
# ------------------------------------------------------------ #

my $TestCount = 1;

# ------------------------------------------------------------ #
# define tests
# ------------------------------------------------------------ #

my $Tests = [

];

# ------------------------------------------------------------ #
# run tests
# ------------------------------------------------------------ #

TEST:
for my $Test ( @{$Tests} ) {

    # check Test attribute
    if ( !$Test || ref $Test ne 'HASH' ) {

        $Self->True(
            0,
            "Test $TestCount: No hash reference found for this test.",
        );

        next TEST;
    }


}
continue {
    $TestCount++;
}

# ------------------------------------------------------------ #
# clean the system
# ------------------------------------------------------------ #

1;