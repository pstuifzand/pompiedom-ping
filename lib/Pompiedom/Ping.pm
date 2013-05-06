# Copyright (C) 2011  Peter Stuifzand
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

package Pompiedom::Ping;

use strict;
use warnings;

our $VERSION = '0.1.1';

our @ISA = qw/Exporter/;
our @EXPORT_OK = qw/ping_feed/;

use LWP::UserAgent;

sub ping_feed {
    my ($ping_url, $feed_url) = @_;
    my $ua = LWP::UserAgent->new(agent => 'pompiedom-ping/' . $VERSION);
    my $res = $ua->post($ping_url, { url => $feed_url });
    if ($res->code == 200) {
        return 1;
    }
    die "Error: " . $res->status_line;
    return;
}

1;

=head1 NAME

Pompiedom::Ping - Send a ping to an rssCloud

=cut

