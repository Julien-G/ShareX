package ShareXApp;
use Dancer ':syntax';

our $VERSION = '0.1';

my $isAdmin = false;
my $user = $ENV{'REMOTE_USER'};

#------------------------------------------------------------
# Les routes
#------------------------------------------------------------

#----------------------
# Partie commune
#----------------------

#-- Déposer un fichier
get '/' => sub {
	template 'index', { isAdmin => $isAdmin, user=>$user };
};
post '/upload' => sub {

	my $filename = param('file');
    	
};
    
#----------------------
# Administration
#----------------------

#-- Index administration
get '/admin' => sub {
	template 'admin', { isAdmin => $isAdmin };
};

true;
