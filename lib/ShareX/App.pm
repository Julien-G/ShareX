package ShareXApp;
use Dancer ':syntax';

our $VERSION = '0.1';

my $isAdmin = false;
#my $user = $ENV{'REMOTE_USER'};
my $user = 'Julien Girault';

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
	my $message;
	
	my $upload = upload( $filename );
   # $filename = request->filename; # request, params parsed as a hash ref
    my %params = request->params; # request, params parsed as a hash ref
    my $request = request->body; # returns the request body, unparsed
    my $path = request->path; # the path requested by the client
	for (keys %params)
    {
        $message .= "$_ => $params{$_}<br>";
    }

        
	template 'index', { isAdmin => $isAdmin, user=>$filename, message=>$message};
    	
};
    
true;
