package BBS::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;
use Data::Dumper;

use Module::Find;

useall 'BBS::Web::C';
base 'BBS::Web::C';

get '/' => "BBS#home";

post '/post' => "BBS#post";


1;
