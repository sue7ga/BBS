package BBS::Web::C::BBS;

sub home{
 my($class,$c) = @_;
  my @entries = $c->db->entry_search();
  return $c->render("index.tx",{entries => \@entries});
}

sub post{
 my($class,$c) = @_;
 if(my $body = $c->req->param('body')){
   $c->db->entry_insert($body)
 }
 return $c->redirect('/');
}

1;
