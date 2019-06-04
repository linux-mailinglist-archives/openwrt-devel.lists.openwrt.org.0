Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C903402A
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 09:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZWgjshW193Fe22vHi1nKfcq4McVYabA54jObhpjk10=; b=lheMDzohUpwp3yi1NiWbpiWEA
	BN4avJUSSrJ96EevT/UhJIGDX6JlWrmHY8UcApnu2mLkdC0fVuL7XLJ7JahBM8IhuBAXv6OafFKNt
	W2P6KQCoU/3pZuO9A+U8cACTYBCF94UpxDTvF72O5soqRweLr+MzrxWiog7ekB1Ias7TLMmWTYMbn
	/hY45ROY99/JxAVThCmEhhhe/YdYd3bBm6YSPoVq41R8JOHSD2qEIWy4YCcf84ef3OcI2tAXYfKSO
	ebEvtFMjyKCkfL5r9uQ8cCv7Ybh6vqL2v2+vC3/9uA1v8zCutnT9VBhnRwLp8Gcse58Cg+1F1MlSg
	9b5WxdW5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3vO-0002ZA-RT; Tue, 04 Jun 2019 07:32:02 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3vH-0002Yh-Ey
 for openwrt-devel@lists.openwrt.org; Tue, 04 Jun 2019 07:31:57 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 24A20565AE; Tue,  4 Jun 2019 09:31:54 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id DC601565A6
 for <openwrt-devel@lists.openwrt.org>; Tue,  4 Jun 2019 09:31:53 +0200 (CEST)
Received: (qmail 19465 invoked from network); 4 Jun 2019 09:31:53 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 4 Jun 2019 09:31:53 +0200
To: openwrt-devel@lists.openwrt.org
References: <20190604055552.17850-1-john@phrozen.org>
 <20190604055552.17850-2-john@phrozen.org>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <fb9627f2-2beb-2339-579c-ee2c262cfea5@wwsnet.net>
Date: Tue, 4 Jun 2019 09:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604055552.17850-2-john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003155_808185_787837F7 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] script/feeds: add a new command
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
Content-Type: multipart/mixed; boundary="===============1958594810716202081=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1958594810716202081==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="z5jsHwasc0RaJdw9DPPH4zkv2Dpv8TUjr"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--z5jsHwasc0RaJdw9DPPH4zkv2Dpv8TUjr
Content-Type: multipart/mixed; boundary="JfoK8dSK9AsEi9qIzH8Mj4k6uwCSsZnu8";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <fb9627f2-2beb-2339-579c-ee2c262cfea5@wwsnet.net>
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] script/feeds: add a new command that
 allows generating a new feeds.conf
References: <20190604055552.17850-1-john@phrozen.org>
 <20190604055552.17850-2-john@phrozen.org>
In-Reply-To: <20190604055552.17850-2-john@phrozen.org>

--JfoK8dSK9AsEi9qIzH8Mj4k6uwCSsZnu8
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

comments inline.

On 6/4/19 7:55 AM, John Crispin wrote:
> This can be used inside build setups for easy feeds.conf generation.
>=20
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
>  scripts/feeds | 37 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>=20
> diff --git a/scripts/feeds b/scripts/feeds
> index 304ef6cbaf..6f8c7be31d 100755
> --- a/scripts/feeds
> +++ b/scripts/feeds
> @@ -7,6 +7,7 @@ use metadata;
>  use warnings;
>  use strict;
>  use Cwd 'abs_path';
> +use File::Copy

Missing semicolon.

> =20
>  chdir "$FindBin::Bin/..";
>  $ENV{TOPDIR} //=3D getcwd();
> @@ -819,6 +820,37 @@ sub update {
>  	return $failed;
>  }
> =20
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
> +	while (my $entry =3D shift @ARGV) {
> +		my ($type, $name, $src) =3D split /,/, $entry;

I think it would make sense to check $name and $src to not contain whites=
pace here,
for example like this:

if ($name =3D~ /\s/ || $src =3D~ /\s/) {
	warn "Feed names or sources may not contain whitespace characters in par=
ameter $entry\n";
	unlink "feeds.conf";
	return 1;
}

> +
> +		$update_method{$type} or do {
> +			warn "Unknown type '$type' in parameter $entry\n";
> +			unlink "feeds.conf";
> +			return 1;
> +		};
> +		printf $fd "%s %s %s\n", $type, $name, $src;
> +	}
> +
> +	return 0;
> +}
> +
>  sub feed_config() {
>  	foreach my $feed (@feeds) {
>  		my $installed =3D (-f "feeds/$feed->[1].index");
> @@ -870,6 +902,10 @@ Commands:
>  	    -i :           Recreate the index only. No feed update from repos=
itory is performed.
>  	    -f :           Force updating feeds even if there are changed, un=
committed files.
> =20
> +	setup [options] <type,name,link> <type,name,link> ...: generate feeds=
=2Econf
> +	Options:
> +	    -b :           Use feeds.conf.default as base for new feeds.conf.=

> +
>  	clean:             Remove downloaded/generated files.
> =20
>  EOF
> @@ -883,6 +919,7 @@ my %commands =3D (
>  	'search' =3D> \&search,
>  	'uninstall' =3D> \&uninstall,
>  	'feed_config' =3D> \&feed_config,
> +	'setup' =3D> \&setup,
>  	'clean' =3D> sub {
>  		system("rm -rf ./feeds ./package/feeds");
>  	}
>=20


--JfoK8dSK9AsEi9qIzH8Mj4k6uwCSsZnu8--

--z5jsHwasc0RaJdw9DPPH4zkv2Dpv8TUjr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAlz2HmUACgkQQuLLvzou
ZtNb1hAAgvLFc5PoHOjQfSi5NzQNYb6KWnBMEEvFoqImgUFG1eYlP/snZzogHh4x
r7p5eCjSxyyYkUrmDQfcDzEQOuSlGcISn2KjIQEwuKOitsXba6IVxePCb4nNx1df
pb9Rt2QESWzndTTM2EhqaHPMmB5/p0u7Jlc4DaFcwByDBw9cph6E6OUGc/l9Vobe
3zFzOYdPnFa8TCepjBCKfGFmo8C0vH9WoAmJzSISv+xQdodq6ptqAmq8GZyHlD5l
3D5H3tHJQRmCvqoC6NsdhLZLv2x2r0K8xaIZBATfuE5KmFqrWzDk+ev+L5RCsiY3
7wqoHwOm3WNxayQC2zT1bnz6+025wI3dcA5lXVth3USY8zq9Vw+ZC08homVbfI6x
fEcZngHgkunpIAYb+Z6PIhvpg0QBY1MllZ/enloJLpDHSPvyIMopkrzhSSQZyDuH
vOUl44p8GNYvTXcSvjniim3evlcySZddCqtANjxqmTEVpfKPlLXpOl+zRVqkj2xP
FMGptLXqYwTM0oGCUSDLLdR1C3WZGWHm08I3+xZOw9+if1OmEyB+Teut1P1gmGXt
V+dAWGlPDqAgzZSXqGm7e76Gt+0cgQc+cq3WE8mHwEksWldKw6rsgzFA2TNa6v6A
6UypHCL0i1FdGqFDoGKKpecsCcQP/Lzl9Zq6MNaHH8cExwtIrs4=
=aIv+
-----END PGP SIGNATURE-----

--z5jsHwasc0RaJdw9DPPH4zkv2Dpv8TUjr--


--===============1958594810716202081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1958594810716202081==--

