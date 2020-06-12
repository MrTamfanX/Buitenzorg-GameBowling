#!usr/bin/tamfan/perl
#Game bowling score support Linux/Termux && Windows/Dos
#Jangan iseng yo, xixixixi main main aja oke.
#Author By : MrTamfanX && TUANB4DUT
#Support Team : Buitenzorg Syndicate.io - UYSFDS MrTamfanX - MrTamfanX Cyber Team
use Games::Bowling::Scorecard;
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red')," ┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red')," ┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red')," ┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red')," ┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white')," ┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white')," ┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white')," ┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan')," ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan')," ┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan')," ┃";
print color('bold white'),"Hubungi/Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan')," ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold cyan')," ┃";
print color('bold yellow'),"This Tool Is A Tool For Playing Games When You Are Bored & Try";
print color('bold cyan'),"┃\n";
print color('bold cyan')," ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red')," ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white')," [";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white')," [";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {

my $card = Games::Bowling::Scorecard->new;
print nomerkasinfo(),"";
$card->record(0,0);
print nomerkas(),"";
chomp($akasscore=<STDIN>);
$card->record($akasscore,9);
$card->record(10);
print nomerkasb(),"";
print nomerkas1(),"";
chomp($akasscore1=<STDIN>);
$card->record($akasscore1,4);
$card->record(10) for 1 .. 3;
$card->record(6,4);
print nomerkasb1(),"";
print nomerkas2(),"";
chomp($akasscore2=<STDIN>);
$card->record($akasscore2,5);
print nomerkas4(),"";
chomp($akasscore3=<STDIN>);
print nomerkas3(),"";
chomp($akasscore4=<STDIN>);
$card->record(8, $akasscore4, $akasscore3);
print color('bold white')," [";
print color('bold green'),"✓";
print color('bold white'),"] TOTAL SCORE BOWLING ";
print color('bold green'),": ";
printf "%u\n\n", $card->score;
print nomerkas5(),"";
chomp($kasfan=<STDIN>);
if($kasfan eq 'YES'){
mrtamfanx();
menukas();
}if($kasfan eq 'yes'){
mrtamfanx();
menukas();
}
}
sub nomerkas
{
    my $n = shift // '•';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOU SCORE BOWLING ROUND1 "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas1
{
    my $n = shift // '•';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOU SCORE BOWLING ROUND2 "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas2
{
    my $n = shift // '•';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOU SCORE BOWLING ROUND3 "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas3
{
    my $n = shift // '•';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOU SCORE BOWLING FINAL "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkasb
{
    my $n = shift // 'BONUS';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold yellow'),"YOU GET A STIKE BONUS FROM A BOWLING SCORE "
    , color('bold green'),": "
    , color('bold green'),"10\n"
    , color('bold cyan')
    ;
}
sub nomerkasb1
{   my $n = shift // 'BONUS';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold yellow'),"YOU GET A STRIKE BONUS AGAIN FROM A BOWLING SCORE "
    , color('bold green'),": "
    , color('bold green'),"10\n"
    , color('bold cyan')
    ;
}
sub nomerkasinfo
{
    my $n = shift // 'INFO';
    return color('bold white')," ["
    , color('bold red'),"$n"
    , color('bold white'),"] Example  "
    , color('bold green'),": "
    , color('bold yellow'),"TYPE YOU SCORE "
    , color('bold red'),": "
    , color('bold yellow'),"10\n\n"
    , color('bold white')
    ;
}
sub nomerkas4
{
    my $n = shift // '•';
    return color('bold white')," ["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOU SCORE BOWLING ROUND4 "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}
sub nomerkas5
{
    my $n = shift // 'EXIT/REPEAT';
    return color('bold white')," [ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"WANT TO TRY AGAIN ? TYPE(YES/NO) "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
