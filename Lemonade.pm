package Dancer::Plugin::Lemonade;
use strict;
use warnings;

use Lemonade::Base;


use Dancer ':syntax';
use Dancer::Plugin;

=head1 NAME

Dancer::Plugin::Lemonade - LemonadeStand Plugin for Dancer

=head1 VERSION

Version 0.1

=cut

our $VERSION = '0.1';

=head1 lemonade

Register lemonade keyword
in dancer namespace. 

=cut
register lemonade => sub {

	vars->{lemonade} = Lemonade::Base->new();
	return vars->{lemonade};
};


#confirm plugin is working
hook 'before' => sub {
	debug vars->{lemonade};
	debug 'hit before sub'
};

register_plugin;


