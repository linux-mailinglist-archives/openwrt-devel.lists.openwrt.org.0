Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE0E1B16A8
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 22:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rChCdRrY8idwPzzo2UObEB4x3fUplWXt6qUm6BXEtWA=; b=A+HSfc/lTFxhYv+0XfVLYNsSg
	x+Xp8Uk9pVgQs02+JdivczpUMicQsFIeHCoy5mySRZGuYENYQ4SIH9ISp1rK1OewCWK3yxs9zd0Hn
	teeK7gjvwSeRKiivf9CYckcBm56TRtlJKYCQlYRf+UZhPGQL4ZCAR/EHD8Ev6Ozo31eq8sYl3N2Yg
	rRgIjvwrBF4xbeAAysG51xwGcNSAk11sDnPjP9Oyrq8EIW7paP4TOYzX5z9SWZzQ/GYmHw3oDHkUZ
	6x6fk9/jq1xLVxUJb8Yk2Dga5TPr/M6rQA/mr26VhbXct7lM+N/WPlGL7c0DBXFwudcnF6tUcErHT
	+cCN+3n5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcgs-0002bx-3p; Mon, 20 Apr 2020 20:06:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQcgk-0002Zv-89
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 20:06:43 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MAwPf-1jXXe81Yi1-00BIpt; Mon, 20 Apr 2020 22:06:37 +0200
From: <mail@adrianschmutzler.de>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
	<openwrt-devel@lists.openwrt.org>
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
 <5c33dac6-9223-8f75-7d44-f5288aa9c7f8@wwsnet.net>
In-Reply-To: <5c33dac6-9223-8f75-7d44-f5288aa9c7f8@wwsnet.net>
Date: Mon, 20 Apr 2020 22:06:37 +0200
Message-ID: <02d701d6174f$32fa0670$98ee1350$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQDU+1NUOd+JjTb0FD0iKlF0sWiNEgELYXL3qnxL1sA=
Content-Language: de
X-Provags-ID: V03:K1:ypZA79oLJVJhVYrO6kzmgHKfZBdLmoklIrnKQdYQmq0TXQ5rl24
 zN8v8JDY4G07oS/htQnS3VhVoO/VCIqCyNT6aEfoOIWudpYsJynE/fj2cRE1Ezx8abRZff+
 mfuLl6YNC4Q0mutoJ7V71p9E/1YIpmn94JG5mbQpMlTPAyjEVYHZu300h6i0pyTDU04ahNi
 z7NyBkb1LGucv5pad55vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2CgKLUwRrLY=:opB0HDp/lmM6vHZOsdQwW1
 MUtSQircSxn3HF+EfPBFFoMcJDEeAHK9m8C/RTyV8A2aZM+VByEpF/6xMTBJXRGE60S9L/uQq
 AaQv9p7+aG33y2fWB0xOW7yXZIVbl1kMYlLBZQMS28P3WXwpLqnXvRDpvRybyWsKuem4ZMVIj
 ToGboBy5ppL2aEqfw00CTxvfhkyuKZ8GaezMw8gRgX9yc+rW6Zw1nLMbaFMIAYkiEd7D4kKPT
 ni/3xZE1bKOASVSTX6BZy2472zKXp/EpZ6oRM+3HE61k29ekEmCGLVP7rekPW+exFauklFHq8
 c6LDB7eF7oGj58fYBa8yOlZ8yqTUtizvXGzHFVjRuRFOYkuqCWGczQ0lUH9YnaWdWLsGfoLpy
 mpKx0YzWzzLoKDbMrTj37yO71pLMTmw/zdKCVmzCcei51C801VeppU+bqqeKIwTAuTaPulliQ
 RuMR4oMf84DgfzSAWN/V84xhmZ5h7kQ2kFfZCq9S5CDzohwsdvBvYAxMjQhywBJhvhxfXC+kQ
 oQRrnSULi0408JbchYQtoF+UMPixeIprQRLCd7VOKI6BrPAsCQDonjjJFhW6YpnXnVC+kDy/0
 DCQdvgEVbUqTcnVZSlT8zpPUM/EGkbPjtTB5uY/xtJUmJK2H85jpx+lI0kIb2Cn8YPx+AWiw3
 Wxd5MY8lXzkBtamE/0meyqvs91Z1+wZS0JaYeHRSVxEvL3BClU5PFzYAxAjqClIheCzw+palX
 hLwobboRdIHLohtQkarccxWezxuWybmL+1pCb1f8c1sHBn80L/Ss8+wFDSm0BG4ShZBnomoAN
 m1LlWItmwjASL1RtYChTGlphbQb3hVSuP/Oo1eB1bXt/5nISxZsaXNF7gSCevhBiBhVd4JO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_130642_580857_8E7CBA88 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
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
Content-Type: multipart/mixed; boundary="===============0997741516365035722=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0997741516365035722==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=JAKNSEc5mB7glm=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=JAKNSEc5mB7glm=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jo-Philipp Wich
> Sent: Montag, 20. April 2020 21:57
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
>=20
> Hi,
>=20
> I'd also prefer approach #2 to eventually allow for some generic configur=
ation
> and port layout discovery mechanism without the need for shipping
> mappings for each device.
>=20
>=20
> In case we cannot go this route and need to stick to whatever mixture
> upstream or the vendors are using, I propose to retain a syntax similar t=
o the
> old "ucidef_add_switch" in the network scripts to keep a known mapping of
> DSA port names to their intended role and order - e.g.:
>=20
>   ucidef_add_dsa "eth0:wan" \
>     "eth1:lan:4" "eth2:lan:3" "eth3:lan:2" "eth4:lan:1"
>=20
> to configure "eth0" as wan port and "eth1" to "eth4" as br-lan bridge with
> sort order override in case the internal naming does not match the case
> labels (not relevant for CLI but will be used by e.g. LuCI).

Note that DSA devices might have additional separate devices labelled ethX =
as well, additional to the switch ports.
E.g. ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4 lan5 lan6" "eth0 et=
h2"

So, this might become confusing quite quickly if we start to rename to ethY=
 here.

Just FYI at this point, haven't thought this one through yet.

Best

Adrian

>=20
> [Not sure if we need the order override at all or if DT is consistently
> guaranteeing properly named devices in all cases...]
>=20
> This will be a precondition to provide a more or less seamless UCI integr=
ation
> for DSA configuration at a later stage.
>=20
> ~ Jo

--=-=JAKNSEc5mB7glm=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6eAMkACgkQoNyKO7qx
AnBVqhAA0QgQsvngYh8Q0QSrce8I8a9Xzvh2Ud5Ssj9lUgEYXNx2R3zVzA3FOP4p
eeZnnsIqVr9f7aMBWqQzKsFnZeY5DVDcccpezUpyJ6MXB8rUQPloXaZ4XZbmEH9E
ut2lXFmZSZmCoOXRuVKXQKeddz1gyS3JKTmiuCdGDbnJo1txckXRS6yUREgotfei
/K3O3Xvx65NDu76ncMGVRG51o7lihJvoEJC/K/y+3UZ2qDW7Dvc9iaJc+/AgLxZJ
W68z+ZOr/lrKN7EhPVecjL8WL9LPYUSmkMXX++8MnGmKjEktdyJoTkL4wNOYNEUI
VaAGy7jfaH9fJnsjndNg2EIZVFAbz5w5zwvqjZEAw/VDyoK4hZaUzq/fKKeflS9d
uNLL8eMqnizB66fHKvg5fZptnSWFfflmy9LYeXm4UfxKpBFokiztblkxYzcn+6a8
lS2g4TKmyI/6Gng0epvpuzIxxGqMhRQt+5cP1ofsspAuY7tOLFK4p/T555ghxP1O
ASX6fKj4q6rzixBPPOtt2FCK3M0agI7bcQ+HKr5+TP1knF5Bdj2RKa6zwEZhUhDl
hGWnmhTwSe0a+nQZzQFmERt70YEuTGsYVqexTPW46qa3rR/oT+s3DMenzOsGsTRO
UOxXQ7en/cIlfaB0cGQA3LqOxBFcKcvbDzYBhurFAmrJzCOW3X4=
=wtnr
-----END PGP SIGNATURE-----


--=-=JAKNSEc5mB7glm=-=--



--===============0997741516365035722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0997741516365035722==--


