package LatexIndent::Element;
use strict;
use warnings;
use feature qw(say);
use LatexIndent::Literal;

sub explain {
    my ($self, $level) = @_;
    ($self->{Command} 
      || $self->{KeyEqualsValuesBraces}
      || $self->{Environment} 
      || $self->{NamedGroupingBracesBrackets} 
      || $self->{Special}
      || $self->{Literal}
    )->explain($level);
    return;
}

sub indent {
    my $self = shift;
    my $body = ($self->{Command} 
                || $self->{KeyEqualsValuesBraces}
                || $self->{Environment}
                || $self->{NamedGroupingBracesBrackets} 
                || $self->{Special}
                || $self->{Literal}
              )->indent;
    return $body;
}
 
1;