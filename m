Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A101C521C
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 11:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SdNwjIen01tBCFh2ZZyKC1oFipdTWGDinpWgivpv4qo=; b=A59x+fYq2cujBz+jC2/iQfUV6
	AOGPQob1TqljlwL1mTdWCQwR+zyWj+YIa2YYhKnF57QB84WgwWs6jDcFsuHYBxkMoBvTb6vFlpHke
	VM1fb2teUKCopp/hiySyL6Svr2KySdlU2FIZ1e36v7k6yfAu0nu0B4P4fIYihMj35T3ZCx7Qga5j2
	gVqdkf7jKbeMU0Mb+s2KnW0JD5ZipE6DBYLWr36zMAE0lbGE4dFTZnw1HYXfO0SgA7KpxRTENCj8M
	9TFcNwFyf6i8YNrMPbP2pgo1DAYmwWVc8l6Fn1FGO278mDVbOy+9ikknsMyvafrJDd2VOVtDbPePu
	SzJH4ocXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVu7k-0001EW-Li; Tue, 05 May 2020 09:44:24 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVu7e-0001E0-6Z
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 09:44:19 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MrPVJ-1ikxum0R5L-00oT34; Tue, 05 May 2020 11:44:11 +0200
From: <mail@adrianschmutzler.de>
To: "'pedrowrt'" <pedrowrt@cas.cat>,
	<openwrt-devel@lists.openwrt.org>
References: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
In-Reply-To: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
Date: Tue, 5 May 2020 11:44:10 +0200
Message-ID: <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHSBs69oM3bXCzIX89/WXUVGm30u6ihdSxA
X-Provags-ID: V03:K1:t79lU/QRJieCblAnW+rvseouQZDkPCMLI4wjSR69kiiazX9TP0u
 2HV7eQkRM0lA9ZQ0dW8dVWCjvMQjTBwJsqu3+nzxnAVUtTp0Dggsj7jQvD6WfBv6taUdXeE
 OwFu1NuT5bGogGaTpwHroN/YHAxMdwer3ofwWyJMjDqQbXR6WDwhHbCIwcLLO/asyFSxmBD
 w1q38GfBDH95bUvjP+Yig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4/E7q9AJUYg=:0n7U/vT+jL2DwmyzL9cYw3
 qlTBOoWMqSmrP/YapmcOLQuRfWaEHvTf+5LEtBBFwnOI+pi/WmafdWnReQPh2q4QNwqh+ZJzE
 IRC6v96uhrLdb9ySteG8D1QfHCqtzShae+0lVaTRtSAZRKchXyXnZXy1igymdtixdYkrTJcsV
 DGGTIMuYHCNdyyQpyaCCVr18e1IFGw6e1PK2LBnl3IFqMRfxw3C4zTipx9H75/qX9pOARPuml
 j3ZHPjHZyDIoYkhiO4pcvAkAeDK4OQxy8S+5hSuGrZbKbFxW85PTDo00K/46pqJKJ28J3v/hb
 qod0jUq/6qFqttk/jE+nJC6UQ3xNfDZ2PW7qCk20xg+i+c1sWqZTvnMqeNT1dR2t2AHlLmkud
 ZLOvwNtrWBJ/XHkseRc9R3rA436DsAPSfuoEvogKHZUrWvB3Np6Ohc82SM/CXwaPxWZwJxSxv
 voNOu8GcOtSUKQlJTF7GamLFRdnKXM+cXLXHJVzPlLj6aX6GlYAUiYHkhXCMU7M3DN99iufqo
 Vbe9KQ77r6cpRQYqJC9f+MDt5m2vfBI4+Z5qskREZn5jYTKsa7UmTsNmholhcmgd3dtvw8AlB
 MqpUB70HNyMZLD64i8qDCIiNM99KAI/AcUsWA/rp4aXeIKMcjJJxpHwtWg/LyqgsR4Mq83Vcm
 nwKruIDG2MWeCIH/4BUqbrR1xLeQgVQuEIFw6BwZXSVvbkPYHrmgvZ+WqxZet8wNCDCe5+3a5
 5ksilQRAhJ6jXadnkS+Vf+ouV73HSlTiLPSJNJZlb4XD/Ca0T12406EQ8DH3uVg4LSOmZNqDx
 oR6oYGO+6O6Inah3jxRMosxQ55gRCBVyVhFiEM3gIaOBY6u4Ik6M3dPJrDG9mloLBO3WqDX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_024418_535425_0FE04DD4 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
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
Cc: ynezz@true.cz
Content-Type: multipart/mixed; boundary="===============5753949117730324853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5753949117730324853==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=29SJy2e9JctPUy=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=29SJy2e9JctPUy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of pedrowrt
> Sent: Dienstag, 5. Mai 2020 10:36
> To: openwrt-devel@lists.openwrt.org
> Cc: ynezz@true.cz
> Subject: [OpenWrt-Devel] Multicast issue in 19.07.x release and master, f=
ix it
> in 19.07.3 (?)
>=20
> ff02::2 multicast is not working in nanostation xw, but roger pueyo find =
a way
> to solve it: revert commit
> c8c2ef1d495dd3fd3096ac508e91a02f9c583ea8 (which is very short)
>=20
> I don't know the implications of doing it. But it fixes a bug that affect=
s us a lot
> (we have lots of these devices and they do routing through cable)
>=20
> https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2848

if I checked correctly, this is not applied to master or even proposed as p=
atch?

Then, you might be too late for this stable release. Normally, stuff should=
 stay in master for a few days before being backported.

Best

Adrian

>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=29SJy2e9JctPUy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6xNWUACgkQoNyKO7qx
AnC5fw//WiiO0HCiVdcQ7NddiJeRnYyOKcnPsi5+MF4cACzH9YW5JHm8lZNAmPeu
SjuStbKKQCBVmEXhkl15LtjQcevqrBZDohX43eq1Ue2NJ7C4HyAZFi1K2OoyW2pb
ZwXVPjc6cJvQbeSqXCVF+NkCZgrwbwxUTndrYunXR0zmSZDGonQZJ0GyRKHXCXEH
YVqpeEZutcVP8wknydesH8FHqK2E6xs4mqUIbnbon0tjUUPkOeAvFGOvhNyxVtJx
/CaU2Oo053eBhbkEP5C04Nr2qHna747FJmZUNq96E8Yf3kT3TfvKpAD0f1kCM9So
EVYeYd7CT1d2sl64j+lv0L+31zAFnsbjarGHD5hJVvJpzIoh+THMQs6vakOzPQZS
nvp1LsULyjlCHKl4Y0Bx6oCWwigcCsupIimdWY2LKUJn0U8F/VDY3WBGrQ0BK75C
LWr4kynHncl3g/7H9V39EEnJ1Z/Z+M0vKLdUfD0NlndmW9joRYAhcVGzXbfJZerm
7OFTDC+xcycjN/VwgK/uPzyXCDMbBfXklLNgYqAFR4mZqpOnAmNNDvt6y9lcERAm
vsyMmOKz4s3W3sJdv67Q+uoTcGDX2c2kYPLN1PND9LBiZ/L6akgfhbBD1Ox2VrZO
4Xf94Z4aW8bvqQMeGpeeyLHTsVPAeJGBLjO95A694jHkbJfYHD8=
=DqGM
-----END PGP SIGNATURE-----


--=-=29SJy2e9JctPUy=-=--



--===============5753949117730324853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5753949117730324853==--


