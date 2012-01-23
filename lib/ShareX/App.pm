package ShareXApp;
use Dancer ':syntax';

our $VERSION = '0.1';

my $isAdmin = false;
my $user = $ENV{'REMOTE_USER'};

get '/' => sub {
	template 'index', { isAdmin => $isAdmin, user=>$user };
};

get '/admin' => sub {
	template 'admin', { isAdmin => $isAdmin };
};

get '/test' => sub {
	template
};

#get '/test/:param1/:param2/:param3/:param4' => sub {
#	my $nom = param('param1');
#	template 'test', { 
#		nom => $nom,
#    	age => $age,
#    	sexe => $sexe,
#    	pouf => $pouf };
#};

post '/upload' => sub {

	my $filename = param('file');
    	
};
    
true;
