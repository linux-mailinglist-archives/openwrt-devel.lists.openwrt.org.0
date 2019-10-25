Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6B9E49E1
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 13:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XAbKT/jH0rOE60msdxcVRKB06SExx6BP1MiQeC1qUbc=; b=LsQ+er/6eKP8QIc+XKy3ql78q
	QSosIvao8unNFR6k9dHnZPzmkVYL82oa1CZHKzAKaXgX68byPPiREMcJwmNSTZGoQmSFUk3f9dCqU
	Jzt6uO36LuRh+8BtvxpWwc/9NSSkBUuq/F3lt7ZxLF+QhMp84R5cfabk4R+iWOEN7HLzmH8ixsPPj
	drhQa3QKZsJbs9P2EjXXkCOZI2JShfnSkXL9RNrQXPbLWuH1UZjj9qTa0gtoyTdIyukTjXla/0vnq
	Ye9r4goDn91fjthPPe3UFsYwVBlt/rNYPTXu8Z+NjPRIVsHOsfztCBDfTYQQOPfr3OwsNSFBQ5cPK
	+waTZ3LtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxkG-0005cI-6Q; Fri, 25 Oct 2019 11:27:04 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxk8-0005Tg-Jd
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 11:26:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MOAJt-1idXa30M8H-00OWpJ; Fri, 25
 Oct 2019 13:26:54 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Patrick Supper'" <openwrt.dev@krtzbrtz.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20191024115430.19992-1-openwrt.dev@krtzbrtz.org>
In-Reply-To: <20191024115430.19992-1-openwrt.dev@krtzbrtz.org>
Date: Fri, 25 Oct 2019 13:26:53 +0200
Message-ID: <007d01d58b27$1a730a70$4f591f50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJnE8xL/kkaRN24bGQaD6FPNcXErKZII9Nw
X-Provags-ID: V03:K1:i9byYFT4O1XNbIrqCq7flDm6DGtpwoBcZmnFit34QDcNbWD26Js
 ivXyPWp7CTth1Rg7KU3EDM+H6DbqIuDIc0uLjHAAxcGScAOaXCVhA2/X7T4vfAYytUqHIpT
 3gqxfyofIut1K88BJ3B2EtSCuNOjS5YUaRPq/Yatl+p4IsclGGTU3f3kASmTgHDhr7dxAU0
 86Nt2RVfEScU+Nh6Cqs6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gNx23O/ox7I=:2jbb8/Ppq6wXRyn1BYOsh9
 9fWe9oQgpLU7ApYsC0Azqqqo8QgvUM91OTRcL3YNUjXsI9LHNIyrULBNW5Fg0KY1BNa/raMNq
 3au8huxv/3n+Wg+D8ojGuYDhQSy6ZQhkZTWfksWYcxkkZetw8AfahWCu/QXPdl0FDxX0cNfGA
 hUIIItK3yZLVubp84h2kET9JvW/4oFRkh8qsXHiE2ueEAFmcXpvS98Pe76wD6nMenVHjDVCu2
 I7drF67FM5b4PIVrUUWsS8f11bXQlK8s5yaLVpkmebKVNgpiubaFJKVD+28gF3FIT+UkTzmVK
 sXyEE8GsS1PKTjgvyowJ3TTt6W8fMNqoVfFTM5yGuNMdbI9+U+qsxypdvIeui9BPmp1RNvv7X
 d1EmoQzhFQkhYTAqJOFibelgAxkCr63xTUqrtdoo8y0QvK6wRATGxRG4yEWAZXDdUq9CyZG9r
 2//V/MYcpnXGICTsso+Y+gWhZjne7HMDR9s1Rgi6qod+frv5nsUsfZCg/50ez2zkiirzYHYxE
 rlzJQ4dXi/+VH/uOtg8G4VNUoNIZ60DeB/RxJ5Dbq/K/s6+oJPb+ceKaSA6eIcOSlShrIr1f9
 SBUQFmmxTBehXH25kUfMKYrVSq1AvnwSmhZ2QeoEIX3gjOg+0zMv0klYlKcHxwaL/88KUskux
 hAFmbhnBo8Z+bpX9WIP7gClDci4Gk81GaZ56fR+adSmLg9MdbtkWnrHZmAhXmsiICSthNh4oV
 EwYU3v4VcYFPdFXRUwcB11JwCa791/tSopoAQB+HfDk+jyTRp6pzSctiMKNqVjl4F/lID17I8
 SWa1hmx/0rpYbkbBodKzhlaTz5nJQSwHsVyGHxUL3B7hKbNtQvvtaPf8/iqjPmdis1k/YvBzO
 RGf+oSc6Yf2dudoxDIZrgKnDZIkLv8PcUkDSpl2tg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_042656_946467_7D5632E3 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for ZyXEL NWA1123-NI
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0225532323670408110=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0225532323670408110==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=pnBlVfkYfVCAm+=-="

This is a multipart message in MIME format.

--=-=pnBlVfkYfVCAm+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +			partition@50000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x050000 0xF50000>;

I'd prefer lower-case for the address (and for consistency with your other =
definitions).

> +			art: partition@ff0000 {
> +				label =3D "ART";

Please use lower case here. This is used consistently across ath79 target.

> +				reg =3D <0xff0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	wifi@0,0 {
> +		compatible =3D "168c,0030";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mtd-mac-address =3D <&art 0x1002>;
> +		mtd-mac-address-increment =3D <2>;
> +		qca,disable-2ghz;

No caldata extraction? Or am I missing something?

> +	};
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +	qca,disable-5ghz;
> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&art 0x1002>;
> +	mtd-mac-address-increment =3D <1>;

Normally, 0x1002 is the address read automatically when mtd-cal-data is 0x1=
000. It is very unlikely that vendor initializes an address to the correct =
location and then overwrites it with an increment.

Please provide the MAC address assignment with vendor firmware.
Based on that information, check whether you find those addresses in art (w=
ith hexdump, or by reading typical locations). For reference, check out htt=
ps://openwrt.org/docs/guide-developer/mac.address

After that, please share the results with us.

Best

Adrian

--=-=pnBlVfkYfVCAm+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2y2/oACgkQoNyKO7qx
AnCWrBAAxz1O/vLCKZ+OU1rf3XdY0Jl8YJ32sybzx2MjSJYMR+IEi+hpcrRef7Xr
2APay3QSeUR4OF352UGwxl8gBkdflRzM/YhzvS84cOmF3Hr3CHNgJlFLvj7V85Wb
l6OdPYrpZvDqtQiBgJvN0tmTHuj38TkDbtWl3BRc4R5anZP/ySKb2ndbRVtFplEl
uQYERHS+IIubMw2FfFXrxPZIVTTnCYI+oLQYM58R8kQg+jMnkoJu2IWrr9E5r32S
nLq3tkWOolw4xagMuFregnkrqnTQ1qHfM9aYswkTU5JgEWtEQAWHZ04rn6UIxw0D
vBdSJ1FgSSJAit4CnQOpH8N6VvXP8+DFOu8TVd9w/wAc+ORX2utTRSXvK4UQmzhJ
R0gzKYvi/0ABrzVzaS39iNMssObbEtXKePlb/TnX5f5JXfeRDQf5/yvFo7MMRwFF
3mBUFqGgTs/EQOymZscl7TAVYVNljxhpZT04yJbFiYVf1/iPhADXdr4f4lpL/i4G
746Ah0cdS881tpqpl44J3aT4B0vRqLnAmOTofQS7mGeRrqinowLiYDMRzX0pA1Ta
MiOYPm9+oQpmNLYkFtZq0LIXhyMMJgdym5e9pW6Og0oT4bRgKnE5EbX1W6w+dG33
yd7Ex/s3I5rVGEoH0XRldM0q91Va9ShHoHIUBMz+KQn71dXtK0s=
=mK04
-----END PGP SIGNATURE-----


--=-=pnBlVfkYfVCAm+=-=--



--===============0225532323670408110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0225532323670408110==--


