Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D06212BDEC
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 16:29:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4KvOl5TOqgRtTk9xF0P3H6WJAHvGVPEfbqPZk2dp2FA=; b=LJ2
	J08hvVNTVceuGp9j6W+hwgXlgDFpW6WPTwsMcE1140Tq6ZNsIQv5Ja+lL9wqQHRl4VX/HA/Iyvn+E
	P/QBqAvRVgxrZ9pdeKh9w1RgNpw+DPWyY83+Y1m77/xMFr9P6JunWmD220A7EpdCNfaKTZA91EE1Z
	0weZzoQOwhVz6wsdg39+5sWNGG8VrLmzOmoWwONg8ARNu5bueva3D/s8UN9dyP8hSBw5c0SfB4jXJ
	B8jVD0SrMUElvkVGVq60ywfSC4nshPAM7diTW7VxrYiSwTV9id5ZXh9+klau2WRe9GkVJWi7nQTqo
	tXX9hwsePezOugQx+IIIkm569KYkswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilE1r-0004nu-6y; Sat, 28 Dec 2019 15:29:23 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilE1l-0004nY-1E
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 15:29:18 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MLR9p-1j1vvc08jz-00IVz7 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec
 2019 16:29:07 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Sat, 28 Dec 2019 16:29:06 +0100
Message-ID: <012501d5bd93$8b3535a0$a19fa0e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdW9k4LuxAx7vF5iTT+LXOeYsoWibA==
X-Provags-ID: V03:K1:twX8xA9iwSGfUqvczKt5us/GtXiFNngXciCDEGnBQeOtWiHUpJw
 mqeKQvEj8c+yYK/uI0sCXcMEmoJfvh4TBZQ9kzNAYmzGmxMFHgTNJbE78NK2yMs+IquBkir
 02VOrgQbpSOMzrbzYn9TtXAyfMdw0SUdoesRG9amKIhIPqqXJb+SXh23l6ymohTkIG41YqP
 svSctoFhAtUfsn4XtI2tw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4lILuT0iylI=:zcQZIvU6IacXKnUU17VrHk
 He7TJ+471zKVlHc+EkgQFQIR6B4EmSyMkcxsKjJ1Fw3OqScLHWH1ZCztse2+F7YLk7ac8oL95
 op2VKnQrtDzFmFTfRfoTU511pyFzqb+xDlaiRfhhTtmvr5WLk8Ie4LS1LxzJPf3FcbvXx7tok
 UmT607l0Z7wfYy4P+YGDMUBVabHwK8XnwNjJe2k4DpBm3EWeESSbS3Ld+R9guPe/TBbF6M6xN
 I1No5UcfN9ub8yDp8v/Bb0bPZPqErNBwOyf/UflTfIYGNRIWgi7hMMTzXKKXBs6rRrdUxuiH5
 zCUmxr21bz0CxzeNDt6Xhh6ebkhDcHf/50uy1I4sfIZoSd0wOrvIonP3UEvjYtnHhSeKaS1ar
 TiXohNa+HeS0IGazUj6+FbKk2D8v/IdwUFPbIsuPwsP2Ek25LgoDc/qD+VzC8fsaeRY8hpkLi
 SN6DI9c1FtDAg2z3BHblV4oHSgp6+uaGe8oUn46Gbm+NIdFIV+/88FeQpa/M8h/veF6dXCwAf
 sleAq+28Ew3uxZHl6RXJT7YtVkoUaUd09zl7PqyCmG9Vz+zGo/fSVQQNTO+I3bch9r9ElEN3l
 PeVxIFMgC0xL2G30ns/+nf/m4FB3SxkOEmtSkPsj7VnCx458GtRJfrQp3EjniMcVAMnEQW3H4
 x68eznBiBW8D6bD9rd5nop5tqDe4JnN7RFTx0vTOpznXJq0XAV5fMT3s7872e1k6wFfnyDqM5
 zJIWKyiotpKhYMYrl3ushf9xzOuPl92EaycRG6VY8Ki0Vs3n4ZLvNy7ATJHY1HXZHdKY89o/E
 sQd38/3GMvCQr80z02tavKIV3Ifdfy3vplk8XpHYLVP9732R+Cieg4OJZD+0elc7zw3j8KCNa
 aZqe0jNKmCrAJHs6BF1tGwAoRka4dDwPTuWNFgKKM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_072917_372972_27A06B74 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] sysupgrade image identification in brcm63xx
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
Content-Type: multipart/mixed; boundary="===============5906284808928680537=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5906284808928680537==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=gjk4mHVMwaNOtZ=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=gjk4mHVMwaNOtZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I consider to do an image/DTS rename in brcm63xx target similar to what I d=
id in ramips target, i.e.
- change image/Makefile device definitions to vendor_model names (based on =
compatible where possible)
- change DTS names to soc_vendor_model scheme
- use SOC variable for calculating DTS names
- get rid of additional board_name set in lib/brcm63xx.sh and use compatibl=
e-derived value instead for base-files.

What I do not understand yet is how sysupgrade works with this target: Norm=
ally, I would have expected a SUPPORTED_DEVICES variable set somewhere. How=
ever, I doesn't look like append-metadata is used there.

Can somebody explain to me how device identification in sysupgrade is done =
for brcm63xx so I can assess whether modernizing the target is possible/des=
irable?

Is somebody against doing those changes to the target in principle?

Best

Adrian

--=-=gjk4mHVMwaNOtZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4HdLcACgkQoNyKO7qx
AnBSAQ//b4MnuKpbRU3mXieMGQqgTk1ZRx6IfA5lbBrSjHSKjHL39hrlGbu2RBxx
hZ5RFlDycE88sZv5H6BpypC/kfmMMBrNcH/OrXUmFqtx/A7LzGW820ESAWF3mVC9
pJO4WJJguCjFg3suiuDYyJ+Q6iWTq747U34ZU2vkV/qZKRcx8urcJE0cAwy4C/L2
zHaCp9wTz5c2wZhO+51d27Ht41/KAI7amYHP4ROZAdNSWlwJ2skiN74gDiOzR9SB
5A0XdYgHKwNZXLLgViDSMiEdVFVr+UcDmkbD2fCQeS67hhWC+eLy21exMR4uaMki
1SK6jtK7Us9fmv5DVTMMmPCtssKLq8y9qZVUkaKtjigOerE7IGj4VOrKxzoHEFCM
p1sL6S6L02cR0cwolVokVOd6Lu2B2JLeDUtoBeeQqdwc7OmJzC+5yR8lQ1ipbVUY
8BcPUne7W+XMeqrmNRWqayP/SelmLAelUYDlZeWv6LpoVmbf/fBeHXRTWxHuOH57
ychbO44RXhysiXuzQ7/e46AjlhsCaj6z3ZgiO5sFeW+19we1vyonIOjm6hndPB1N
NJHa8A/d1RONVUjhu6sB8ZtR/dbH2dVd0EmtyhOgLl6lm27MXp57wMo/vPpph0RY
0IHUfWEMzDNn87ZDT15GFvas0Zn1vDMeVQBvLjHsmF2sKXIVwes=
=qhbx
-----END PGP SIGNATURE-----


--=-=gjk4mHVMwaNOtZ=-=--



--===============5906284808928680537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5906284808928680537==--


