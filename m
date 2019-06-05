Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4537735A5C
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E+fTwf6KACQp+iqQc3IDkK/udfGRboDl1Wm5zdu23Hk=; b=FP+7ftBPXp20w5OTZ8n4ynTtB
	LEQlk/32+8o8okIkbebPLtaIbhMpXwsryiw4ozu0rChO14jvEv4kpRp6fMUKWnK6lyfx/kJ5VyzHZ
	uo/t1u3B6A1RZa0RS7EZYGfYJpY6BgZn5to6mh+gBG0IQ6F6WCWUS8LffNUKG25Aa9z3vWS+a+zor
	upQJJLy7BKvaLRbsuEklXJzrDpFIQ1ha2GsVClO46pa+4n9zk9bWJ0H7hIsY4ximmuxu/JEXDYtn7
	VvJx5DtfOMim683jQd+prA5SlJkYACIa9eCZ41p/z5KYL5MUihL1s73OykfC2KR7x8VmGI7OCCKy4
	IquBfyr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSzp-0002We-Ld; Wed, 05 Jun 2019 10:18:17 +0000
Received: from palmtree.beeroclock.net ([2a01:7e00::f03c:91ff:fe93:f66c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSzi-0002WA-H9
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:18:12 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 546EC1FC23;
 Wed,  5 Jun 2019 10:18:07 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
In-Reply-To: <20190605063409.27769-1-john@phrozen.org>
References: <20190605063409.27769-1-john@phrozen.org>
User-Agent: Mailpile
Message-Id: <hynK3tKHMk6tAKPpYkaNRSzi2nMrDdpKviIa49aQ2342@mailpile>
Date: Wed, 05 Jun 2019 10:17:34 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_031810_844145_6A31751B 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4602429622697403090=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4602429622697403090==
Content-Type: multipart/signed; boundary="==h6azuvzvIAg4R5DrrsC6Ta7EYpKcjr==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==h6azuvzvIAg4R5DrrsC6Ta7EYpKcjr==
Content-Type: multipart/mixed; boundary="==tNsjLuQmHSfLq343sN3YujFpUGTC3m=="
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20190605063409.27769-1-john@phrozen.org>
References: <20190605063409.27769-1-john@phrozen.org>
User-Agent: Mailpile
Date: Wed, 05 Jun 2019 10:17:34 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==tNsjLuQmHSfLq343sN3YujFpUGTC3m==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


John Crispin <john@phrozen.org> wrote:
> This can be used inside build setups for easy feeds.conf
> generation.


Could you give us an example of how this is actually easy, or
what sort of functionality this is providing beyond "cat
feeds.conf.default feeds.conf.extra > feeds.conf"

It seems like a lot of perl for a narrow usecase.

Sincerely,
Karl Palsson


> 
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
>  scripts/feeds | 42 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/scripts/feeds b/scripts/feeds
> index 304ef6cbaf..7cd4639ca6 100755
> --- a/scripts/feeds
> +++ b/scripts/feeds
> @@ -7,6 +7,7 @@ use metadata;
>  use warnings;
>  use strict;
>  use Cwd 'abs_path';
> +use File::Copy;
>  
>  chdir "$FindBin::Bin/..";
>  $ENV{TOPDIR} //= getcwd();
> @@ -819,6 +820,42 @@ sub update {
>  	return $failed;
>  }
>  
> +sub setup {
> +	my %opts;
> +
> +	getopts('bh', \%opts);
> +
> +	if ($opts{h}) {
> +		usage();
> +		return 0;
> +	}
> +
> +	if ($opts{b}) {
> +		copy("feeds.conf.default", "feeds.conf") or die "Copy failed: $!"
> +	} else {
> +		unlink "feeds.conf"
> +	}
> +
> +	open(my $fd, ">>feeds.conf");
> +	while (my $entry = shift @ARGV) {
> +		my ($type, $name, $src) = split /,/, $entry;
> +
> +		$update_method{$type} or do {
> +			warn "Unknown type '$type' in parameter $entry\n";
> +			unlink "feeds.conf";
> +			return 1;
> +		};
> +		if ($name =~ /\s/ || $src =~ /\s/) {
> +			warn "Feed names or sources may not contain whitespace characters in parameter $entry\n";
> +			unlink "feeds.conf";
> +			return 1;
> +		}
> +		printf $fd "%s %s %s\n", $type, $name, $src;
> +	}
> +
> +	return 0;
> +}
> +
>  sub feed_config() {
>  	foreach my $feed (@feeds) {
>  		my $installed = (-f "feeds/$feed->[1].index");
> @@ -870,6 +907,10 @@ Commands:
>  	    -i :           Recreate the index only. No feed update from repository is performed.
>  	    -f :           Force updating feeds even if there are changed, uncommitted files.
>  
> +	setup [options] <type,name,link> <type,name,link> ...: generate feeds.conf
> +	Options:
> +	    -b :           Use feeds.conf.default as base for new feeds.conf.
> +
>  	clean:             Remove downloaded/generated files.
>  
>  EOF
> @@ -883,6 +924,7 @@ my %commands = (
>  	'search' => \&search,
>  	'uninstall' => \&uninstall,
>  	'feed_config' => \&feed_config,
> +	'setup' => \&setup,
>  	'clean' => sub {
>  		system("rm -rf ./feeds ./package/feeds");
>  	}
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--==tNsjLuQmHSfLq343sN3YujFpUGTC3m==--

--==h6azuvzvIAg4R5DrrsC6Ta7EYpKcjr==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAlz3lsEACgkQGai1D9TV
yvafNg/+NMKsQCdYV0JPU+5J3YRDgnTjLBO59KGUDmhcFecTGWFjyIsArneXZx6d
VfwbXlK5jXjusvKNBnyzy4qIBaAWWlQESX7J4PD/iqRJE+iONsKfTi/U2PtbKsPf
kiAV7OGO6VaMDBtAsTUCCRKfmzOyVbpPQQaY4J6R2FORVMenTGTQFrQqKYY3NM9S
EYP2EGNU2WFs7F7MCTNy4QQP2qm99kW53+R82GgMYIKFJvPzRL5X+LcKqGQGKR05
A4XywS4gX4Q8hhhYE6nXy6ZPcNGpa3vjL2flkeoS/1sh+RE/o8xAdbIJNJaH+C3j
vpGfR4GlxJS/IhxkgSrYMzGTP4/PiKo5G54N90dRDY1YOtk5oTA1pwHZLQpoHVD3
Xehl8TcHKUPxZvmJJLv+rMMb3rNVj/OIJAnrRVI1cBG4Tl734nKNpmY7a70TNd2v
Pf2uAZLuxDRn2T1M9L0hTffNosU875C0jWJmntTtthEM7NvZAlItgyGMiMFbiKVF
4hZDOzrHc+aFdwvTSPFF0YYxd9j2aL3ErEFTCYm7oT8z/RN8/LCwl2nL4VW66hkC
kTsjyzzqgh9/H4WQWUxtWDv+6GXKl8vgaWkS/hr/eqOVot5C50VjTRbFUCofP8bK
kp2No5L8v6AEOD0ftdbITxWhypCY3J5juhE4n9Or24bUly3Dp4o=
=S1oO
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==h6azuvzvIAg4R5DrrsC6Ta7EYpKcjr==--



--===============4602429622697403090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4602429622697403090==--


