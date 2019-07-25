Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB0974907
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 10:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m/k9YPAJwf2APJIo7iICPwLqOigBWO12y5/69U3MAgw=; b=X65EmeXBcxvfkqmSVsauT/oL3
	IsydMjKE53KdjE842ZvCwe+cY3L+MfAiyDsnrCwRKk4EZ7pdw8sxublXWlBxMRilwJHqU1otIN2ox
	DRWrDPg/mUVMG8IKtzV5bNRLEQ/7sT4nklphIvXbTL1zI1PPsLqZ5tgtBfJ163FcjijYbsEAA9KcI
	RtKMYuUtyWEH1+X3cEw90gihNCYBGVIEpjSan3wYQXs4Etbfbo3IJV44VD03EdmXfcB4OgLjcSQ3I
	3FWspez/HoUbOjB2zZuLV22gdq1miroYM2UTOEUz6AJbbuDIvfujtyhmvl00wYxt2Q6Z4xEY7i+fv
	dL6Z2DMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqZ2w-0007Zh-FB; Thu, 25 Jul 2019 08:24:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqZ2d-0007ZJ-Qm
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 08:24:01 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MUooJ-1hyz7c1AY5-00Qmgw
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 25 Jul 2019 10:23:57 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190724225026.35856-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190724225026.35856-1-freifunk@adrianschmutzler.de>
Date: Thu, 25 Jul 2019 10:23:55 +0200
Message-ID: <002201d542c2$4d57dc70$e8079550$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHg/AUaZ5eFnxMftHQ3z/Q2JZ37jabDi+tQ
X-Provags-ID: V03:K1:cSNuiHLUQ8Hq13wYfbhslot1wp9Q7OdoRkZdfg0mlBtKkX94nxS
 RfGCT+ZwJgcx/nE5TME+GZy52ZAEqo8fMKB8USs1cU8UrPrWvxCSGdMZ85L95OuqNHHhoHn
 vkhqVBojsNp/1fFLlEl60mnjVkSPEI+XVZW7A+N8MoSR2k7FQ339yMJUoCNe9WEMB+aumJb
 ZI3GdRtexVi3l7ong++kw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JZ5nWXXaZfc=:HWzZhJa8UevNFFFL3jdMA0
 mTgFvVfkhhD2IrqFKhntS64pQyL8FLa7yEBEN4SnKwkpUu2nvd1Hr6adHckiM/rvQMWYJveqB
 MqOJ5U8/zfde8dvuYYDJmRHd0euW737mxP4SrJvTVuMGXdTtzqdgxPJub0jg8V8AQnYQ52R4n
 pEUiZF13/8ceGZbO+52qW0pTexwIeNtQO8DCLaxU9eXWJuqUGsmq6UH3mqcBaLnPppj9l06f2
 GduV6TVArlCYAAI3C51UZILaJ10fnL2FM96Y+22yS+7A9jK5N93Ckhc3EzW1llICD33HlCb16
 qcDjXzc9lCX0wxIgaaY6jVJg5gBTxArFneInhnMIdDz/Jn7/NaIK1vhAcJ6ZCW604vdUO7tQw
 JplAwxx/zshNpI/BR6ggEME3hCkl4liQQMmCN9cGqBtbErLua4ZbCqNzNR1MpEnhDdZnKlG1r
 h6vhbV2kVtMRS7jj6W+N8/NwENC0Ys3L889gGy50XhvjagApyEERo3JaTWl9IoKjQ7vP3OBlv
 3orUOUgfhebLSYc3xOhsIM2pgeU1EJErKB1DwBV7RddBeg+VCrjzBlYQ450nHwRV2dWUqk9XX
 U6+0IL6UCVe4KrDSyl6l1nk2zIfXHhXAk+gZ1JIjeCUBrahU75OgEVGq8iJLfRGBihMl1IAEQ
 /XHF9bPbR8e4xWhljyIIdCchq580/8R+3Yfb1qOhfXqLMk74eZFJORZKaka9pc52T6aB/dA/u
 PsyWwnt8zRT7i4vWz+tGynzXhfAOTYMw/SgdY9Dw4g9xCKU5gcjPWC7cKBM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_012400_164303_C3B9ED40 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] octeon: Replace backticks by $(...)
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
Content-Type: multipart/mixed; boundary="===============3262614847359031747=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3262614847359031747==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=buygaQuA429SJy=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=buygaQuA429SJy=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Donnerstag, 25. Juli 2019 00:50
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v2] octeon: Replace backticks by $(...)

sorry, I forgot to decapitalize the commit title for all those v2 patches.

However, I don't think it's worth sending a v3 only for that.

You may just change it during merge within my Signed-off if you like.

Best

Adrian

--=-=buygaQuA429SJy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl05ZxYACgkQoNyKO7qx
AnDWFg//Vq8/Kt+lMxvWM3TyuN9v1960ZUUdWe+dWYvbw6O2qkZKyhGchbNtuAY+
DZHzc5MpxRnE1RwpAA1hjyGMPlx7U9uI9rVLeDVuGGoebG8RTGWgzobGLJqPDXvH
tl6TaMaaHAuQvlqGZldBz1m7sPOzsa+eduT4KQ29Tfex4bVP5oKYuPA2PgvqlNvE
K9caoIt45dVCbtkVry2hbg+i/Zp7I+eB9UGXHBiLgW3XZ2vPWZnDRjNxX3GMBWll
jY5oR8LMC9XZi/AvAGM6sGX7Gml26YdU1bSml5d21Bs4z84xoUL1/dnZdyu9+7q3
lOFBfxbmFU0PWgqvQdfuZDY/zT1nedwx9VmHGQRDKqLUA7kgKIwKc2snv59o0aKc
NjhKIBLo6cSIuGBFplTGmsKtCPSvJT+iW6bWgIqqToe5gvC+lAqPq6RO3sAlRfac
ZuGESvgAALqOq43Rnud9ZMKahpNvF/RLINlG+M2EcUdDebqOGcaSRSD/lK6vb0Mb
hzt9k5Koami2Ix21kIPlVDU6dXW2ygxvcphRK9dk7Zul4zDl2jZC7JtEusWc3RxQ
CjSdsF7duwQVpjw9RIr56MOEa76xsuE+cWVqmmcX6OjoF3wWY5Qoc5DezIH3mNxq
QP3RCBGyTFcIUxisHSkaLyFQaKLDDbOvjm1ohumJ59tDc4ZGnSk=
=IiD6
-----END PGP SIGNATURE-----


--=-=buygaQuA429SJy=-=--



--===============3262614847359031747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3262614847359031747==--


