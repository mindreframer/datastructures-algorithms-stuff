#!/usr/bin/perl
#
#   Copyright (c) 2005 by Bruno R. Preiss, P.Eng.
#
#   $Author: brpreiss $
#   $Date: 2005/09/25 21:36:01 $
#   $RCSfile: Demo2.pm,v $
#   $Revision: 1.1 $
#
#   $Id: Demo2.pm,v 1.1 2005/09/25 21:36:01 brpreiss Exp $
#

use strict;

# @class Opus10::Demo2
# Provides demonstration program number 2.
package Opus10::Demo2;
use Opus10::StackAsArray;
use Opus10::StackAsLinkedList;
use Opus10::QueueAsArray;
use Opus10::QueueAsLinkedList;
use Opus10::DequeAsArray;
use Opus10::DequeAsLinkedList;

our $VERSION = 1.00;

# @function main
# Main program.
# @param args Command-line arguments.
# @return Zero on success; non-zero on failure.
sub main
{
    my (@args) = @_;
    my $status = 0;
    print "Demonstration program number 2.\n";
    Opus10::StackAsArray::main(@args);
    Opus10::StackAsLinkedList::main(@args);
    Opus10::QueueAsArray::main(@args);
    Opus10::QueueAsLinkedList::main(@args);
    Opus10::DequeAsArray::main(@args);
    Opus10::DequeAsLinkedList::main(@args);
    return $status;
}

use Cwd 'abs_path';
if (abs_path($0) eq abs_path(__FILE__))
{
    no strict 'refs';
    exit &{__PACKAGE__ . '::main'}(@ARGV);
}

1;
__DATA__

=head1 MODULE C<Opus10::Demo2>

=head2 CLASS C<Opus10::Demo2>

Provides demonstration program number 2.

=head3 FUNCTION C<main>

Main program.

=head4 Parameters

=over

=item C<args>

Command-line arguments.

=back

=head4 Return

Zero on success; non-zero on failure.

=cut

