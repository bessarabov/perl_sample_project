use Mojolicious::Lite;

app->config(hypnotoad => {listen => ['http://*:80']});

get '/' => sub {
    my ($c) = @_;

    $c->render(
        json => {
            hello => JSON::PP::true,
        }
    );
};

app->start;
