Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBA48340F
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/W2mFy+nzzFuWQC+NgoA7blNiiFbfFxMCZaAFziaR/4=; b=EbL+XK7lHRUNQEPSCdp6k57mQ
	+MTpECQE4PsnCED5Q/0SfMrtFyAowmKW2Xhuq57FYZCC6pHFcwsktxn7H8uNjQPFAsw5tRBsfrOjd
	norysmMYhJtp3heYXLxBmmNyQkfaVQuFyQK4PeLsBvzrhFXQwiCcEvn5vx99C/Upw2/NL7dRahP0X
	yrIsxO81+fNP31f0Qqs6FkLhQZLMWLhrH2eb+jc7R6IS5A1uBjUi9cbfT0XyMTPyXw/hNW4bz8klj
	fOcJmOmqkBKEtgUmG4GmPtpvby4HTy7dyXogWgrcfk2p20ZubZD+1XDyM2tyN8rV4J896VKjiviFt
	SG8fSAEFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0ZB-00081l-Mj; Tue, 06 Aug 2019 14:35:57 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0Ys-0007rG-85
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:35:39 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MvrRB-1iDvBh3l0Z-00srKL; Tue, 06
 Aug 2019 16:35:34 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160728.398bc2b5@kosmio.komorska>
In-Reply-To: <20190806160728.398bc2b5@kosmio.komorska>
Date: Tue, 6 Aug 2019 16:35:34 +0200
Message-ID: <014201d54c64$35205690$9f6103b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQOL7QHnymnlz/3+5VSVADj4hR324wFXmidmo3YxHSA=
X-Provags-ID: V03:K1:Du9oZogpYIRvwMG45t2hRQEFrJ7yejrOfsT7H28+540IeGofn7n
 lTg8yrZCD9r+dqGIjGuAxNIBwGdi1p1gXk4fkK2s2DVmeW+kz+cGb3jq7/FT6zXEPbQoQO5
 DWg+4vz7Pt3xAYuEZfQaEDuHcrc66EwdzI0ZRjlHaVGq1C/a5Dj76RdvJ0iNqLkVj344iaK
 kteUu3bH7z2k7YU8muJdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZB0VPuyQmKo=:yEp7fRSxwhcIdfVUlEqqDc
 mA9HlXlN8tz3wIxamF/rNLbs0+BniGODqHgxIA5+g2iuYdZSv+OClh+ehEBgFGigbsnd96omT
 XA6vz5xwAM2WUkV480nJ58FBZVnUtHzxCp3ajKMDZSzFdOti1yqtQw0isRJLX7Gauk+HgaGFR
 WOqcTp4+Qpgi1DSo+Av/PEojYBzDJ8E0zm00cehe6Q/jgaGJc3hLP0afaOEcswi8NPUh0WX5t
 qJbKRH671BDva0leeQDsYXWA0Lt/5WZep2qDSc535n9mnDG64biOHC6SKELDmHxKFBB1+1qPp
 6J7Rhn0esuUdnKSTFnxXT7zu3xHWO4dJoffLXCmcrO2/iWD+DLZ6oYk30GZ/D+HEd1zf8KZlA
 hN43zntz6QvVBWziA7wDNNmXLJta41Ql7wGqWVyg2ib/tPan/jhc4dmwuQSGXXZ0RGU2/ZXoS
 sI8WncI7BsTMoprPZFUbAfZMiCvetmWGWEhqKjRQ+eHQeIw6olrUUxA0k57VDgnUwC+02Y2kr
 Ievjn55OpeSXiFDi9cbul4e82TrqcsZ7DIGX7fGymmK71t1y8uCmmGNUkPtS1gSlQkv31I3y5
 iJjEOL5pp5XdDKLDbE+lWnCuFm0ttMY4KhVkGpdJ061uADNcNkXbokFeU1/AKAKruoOPcBeaS
 8Nt+tOTAh5nghP0YFLhUx/5eKhJGNa565g4/wQhkHo5iHYZnLw9qqdAN8JjgAV+161TeiXehX
 36nZ2gNeL1wHd330uKZk11Pedqy71J3FNQfx5qacbL4503qg4Nh41LCo1vw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073538_599702_C4F449F9 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 5/5] ath79: add support for Netgear
 WNR2200
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
Content-Type: multipart/mixed; boundary="===============6930944931334549884=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6930944931334549884==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ERBYNu7zcgKgPd=-="

This is a multipart message in MIME format.

--=-=ERBYNu7zcgKgPd=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> +&pcie {
> +	status = "okay";
> +
> +	ath9k: wifi@0,0 {
> +		compatible = "pci168c,002e";
> +		reg = <0x0000 0 0 0 0>;
> +		mtd-mac-address = <&art 0x00>;
> +		mtd-mac-address-increment = <1>;
> +		mtd-cal-data = <&art 0x1000>;
> +		qca,no-eeprom;
> +		#gpio-cells = <2>;
> +		gpio-controller;
> +
> +		usb {
> +			gpio-hog;
> +			line-name = "netgear:power:usb";
> +			gpios = <4 GPIO_ACTIVE_HIGH>;
> +			output-high;
> +		};
> +	};
> +};

Sure that this is the correct location for the usb hog?

Best

Adrian

--=-=ERBYNu7zcgKgPd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1JkDUACgkQoNyKO7qx
AnBc4A/+Oor7qPx9t9DtOKKNa5vtlgiAQ0wXypuuhNF3Z/zaqLZVPHEdEoPXGNzk
OGyX937DYSy6tG2h53gtMeuTibTPRHMaGGjBvq46DR1HLosQx/z8YryaPlKZBhNS
OWQ6pv7rmpBc9CrNudE9ttVSKAvr3wHILUPYFJ/4FTxn66rpCzQ+16kMdJpblXqe
VayYZCgMQ0OnRk93Dv6ponUZxGFKtX8GZ7EMI5uVjyKQ+mFUOSPbDu902LcRASpt
mx3GNCT7aMHfe7I5j0u/J+poQtw5fY2995v0lAVCQcS8z2iCQEtZ+5M348wXHXLL
rBehl7x723R+nutPmlr6g7snp9PKIQ4qN3kl3Vvguqjpa864JPIiRF/wvPYO+8Rb
8anHY0EbGJ+ynEH8IQQ+WP6XWKO2N4IxohDGXlCGqQRYyoCG/aaGmLzYGxwcGjcD
/33sRfJ8M0pB/MHlXEYqS+sY/DrM2LEGts4DZ9eL1FWWJhiXU6EZR/chEs5q4Q9X
MkaMOZy8EjUKsTtMpEdSzIcUqzcmE5aKhx7tlMcv0LZy/bNQGQ4u88F/eRWQiVH8
fQ/NkoFKTtQNSKyl8Hv3EayAdMA1puCAjPPvZl4L+nKb5HoiUV2kHnQUQZuArqus
kZpmLFrhkqUOtCHPUQOZ9qP/Ja79/lDFoI8OcCInjsJI4St2SA8=
=/blI
-----END PGP SIGNATURE-----


--=-=ERBYNu7zcgKgPd=-=--



--===============6930944931334549884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6930944931334549884==--


