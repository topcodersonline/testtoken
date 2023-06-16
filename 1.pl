my $host = `hostname`;
chop($host);
my $prompt = "$ENV{USER}\@$host";
my $prompt1 = "$ENV{USER1}\@$host";
my $prompt2 = "$ENV{USER1}\@$host";

 
sub validate_password {
  my ($password) = @_;
  my $is_ok = ($password eq "goodpass");
  printf "$prompt: Password ok? %d\n", $is_ok;
  return $is_ok;
};
 
 
if (validate_password( $ARGV[0])) {
  print "$prompt: access granted\n";
} else {
  print "$prompt: access denied\n";
};

my $host1 = `hostname`;
my $host2 = `hostname`;
my $host3 = `hostname`;
