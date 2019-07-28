sub main {
    use strict;
    use LWP::UserAgent;

    sub cek {
        if($^O=~/Win/) {
            system("cls");
        } else {
            system("clear");
        }
    }
    cek();

    my $wkt = localtime;
    printf("\033[93m");
    print q{
 :::       ::: :::::::::: :::::::::   ::::::::   ::::::::      :::     ::::    ::: ::::    ::: :::::::::: :::::::::  
 :+:       :+: :+:        :+:    :+: :+:    :+: :+:    :+:   :+: :+:   :+:+:   :+: :+:+:   :+: :+:        :+:    :+: 
 +:+       +:+ +:+        +:+    +:+ +:+        +:+         +:+   +:+  :+:+:+  +:+ :+:+:+  +:+ +:+        +:+    +:+ 
 +#+  +:+  +#+ +#++:++#   +#++:++#+  +#++:++#++ +#+        +#++:++#++: +#+ +:+ +#+ +#+ +:+ +#+ +#++:++#   +#++:++#:  
 +#+ +#+#+ +#+ +#+        +#+    +#+        +#+ +#+        +#+     +#+ +#+  +#+#+# +#+  +#+#+# +#+        +#+    +#+ 
  #+#+# #+#+#  #+#        #+#    #+# #+#    #+# #+#    #+# #+#     #+# #+#   #+#+# #+#   #+#+# #+#        #+#    #+# 
   ###   ###   ########## #########   ########   ########  ###     ### ###    #### ###    #### ########## ###    ###
=====================================================================================================================
[WebScanner] /<-------------------[Coded by M.Fazri Nizar]------------------->\ [Started at };
    printf("$wkt]");

    printf("\033[93m\n\n\nEnter the Website (without http/https) : ");
    chomp(my $a = <STDIN>);
    $a=~s/\n//;
    my $b = LWP::UserAgent->new;
    $b->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
    my $c = "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x70\x61\x73\x74\x65\x62\x69\x6E\x2E\x63\x6F\x6D\x2F\x72\x61\x77\x2F\x64\x64\x59\x4E\x6D\x57\x79\x73";
    my $d = $b->get($c);
    my $e = $d->content;
    $e=~s/\$a/$a/;
    my $f = $b->get($e);
    my $con = $f->content;

    sub a() {

        if($con=~/\"SCAN\":/) {
            printf("\033[93m\n\n------------------------------------------------------------\n");
            printf("\n\t\t<--General Info]-->\n");

            while($con=~m/\"CDN\":\[\"(.*?)\"\]/g) {
                print("\nCDN : $1");
            }      

            while($con=~m/\"CMS\":\[\"(.*?)\"\]/g) {
                print("\nCMS : $1");
            }

            while($con=~m/\"DOMAIN\":\[\"(.*?)\"\]/g) {
                print("\nDomain : $1");
            }
    
            while($con=~m/\"INPUT\":\[\"(.*?)\"\]/g) {
                print("\nInput : $1");
            }
    
            while($con=~m/\"IP\":\[\"(.*?)\"\]/g) {
                print("\nIP : $1");
            }
    
            while($con=~m/\"SITE\":\[\"(.*?)\"\]/g) {
                print("\nSite : $1");
            }

            while($con=~m/\"HOSTING\":\[\"(.*?)\"\]/g) {
                print("\nHosting : $1");
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }
    }

    sub b() {
        if($con=~/\"SYSTEM\":/) {
            printf("\n\t\t<--[System Info]-->\n");

            while($con=~m/\"SYSTEM\":\{\"INFO\":\[\"Redirects to: (.*?)\"\]/g) {
                print("\nRedirects to : $1");
            }

            while($con=~m/\"Running on: (.*?)\"/g) {
                print("\nRunning on : $1");
            }

            while($con=~m/\"Powered by: (.*?)\"/g) {
                print("\nPowered by : $1");
            }

            while($con=~m/\[\"Application: (.*?)\"/g) {
                print("\nApplication : $1");
            }
    
            while($con=~m/\"VERSION\":\[\"(.*?)\"\]/g) {
                print("\nV : $1");
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }
    }

    sub c() {
        if($con=~/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\]/) {
            printf("\n\t\t<--[Blacklist Info]-->\n\n");

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("- $1 = $2");
            }   

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $3 = $4");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $5 = $6");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $7 = $8");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $9 = $10");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $11 = $12");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $13 = $14");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $15 = $16");
            }

            while($con=~m/\{\"BLACKLIST\":\{\"INFO\":\[\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\],\[\"(.*?)\",\"(.*?)\"\]/g) {
                print("\n- $17 = $18");
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }
    }

    sub d() {
        if($con=~/\"RECOMMENDATIONS\":/ || $con=~/\"OUTDATEDSCAN\":/) {
            printf("\n\t\t<--[Security Issues]-->\n");

            printf("\033[91m");
            while($con=~m/\"Outdated (.*?) Found\",\"/g) {
                print("\n[!] The website has outdated $1 found : ");
                if($con=~m/\",\"(.*?) under (.*?)\"/g) {
                    print("$1 should have under version $2");
                }
            }

            while($con=~m/\"\*Web site defaced./g) {
                print("\n[!] The website is defaced. Contact the administrator immediately.")
            }

            while($con=~m/\"HTTP Trace Method Allowed\"/g) {
                print("\n[!] The website is allowing HTTP Trace Method. Possible can be misused to attack it.")
            }

            while($con=~m/\"Server Banners Displayed\"/g) {
                print("\n[!] The website is displaying default its web server default banners, possible harmful");
            }

            while($con=~m/\"Security Header: X-XSS-Protection Missing\"/g) {
                print("\n[!] The website is missing Security Header : X-XSS-Protection, no XSS protection");
            }

            while($con=~m/\"Security Header: X-Content-Type-Options nosniff\"/g) {
                print("\n[!] The website is missing Security Header : X-Content-Type-Options nosniff, no content type sniffing protection");
            }

            while($con=~m/\"Security Header: Strict-Transport-Security\"/g) {
                print("\n[!] The website is missing Security Header: Strict-Transport-Security, learn more here : https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security");
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }
    }

    sub e() {
        if($con=~/\"URL\":/) {
            printf("\n\t\t<--[Parameter/Urls]-->\n\n");
    
            while($con=~m/\"URL\":\[\"(.*?)\"\]/g) {
                $con=~s/\",\"/, /g;
                print($1);
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }   

        if($con=~/\"LINKS\":/) {
            printf("\n\t\t<--[Links]-->\n");

            while($con=~m/\[\"WordPress theme: (.*?)\"\]/g) {
                print("\nWordPress theme : $1\n");
            }

            while($con=~m/"IFRAME\":\[\"(.*?)\"\]/g) {
                $con=~s/\",\"/, /g;
                print("\nIframe : $1\n");
            }

            while($con=~m/"JSEXTERNAL\":\[\"(.*?)\"\]/g) {
                $con=~s/\",\"/, /g;
                print("\nJS External : $1\n");
            }

            while($con=~m/\"JSLOCAL\":\[\"(.*?)\"\]/g) {
                $con=~s/\",\"/, /g;
                print("\nJS Local : $1");
            }
            printf("\033[93m\n\n------------------------------------------------------------\n");
        }
    }
    
    if($con!~/\"INFO\"/) {
        printf("\033[91m\nSomething went wrong. Check your internet connection or contact me for a troubleshoot.\n");
        return;
    } else {
        a();
        b();
        c();
        d();
        e();
    }

    printf("\nWanna use this program again ? (y/n) : ");
    chomp(my $x = <STDIN>);

    if($x=~/y/ || $x=~/Y/) {
        cek();
    } else {
        main();
    }
}main();
