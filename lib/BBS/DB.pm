package BBS::DB;
use strict;
use warnings;
use utf8;
use parent qw(Teng);

__PACKAGE__->load_plugin('Count');
__PACKAGE__->load_plugin('Replace');
__PACKAGE__->load_plugin('Pager');

sub entry_insert{
 my($self,$body) = @_; 
 $self->insert('entry',{body => $body});
}

sub entry_search{
 my ($self) = @_;
 return $self->search(entry => {},{limit => 10,offset=> 0,order_by => {'entry_id' => 'DESC'}});
}


1;
