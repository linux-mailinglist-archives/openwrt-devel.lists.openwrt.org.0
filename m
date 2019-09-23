Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E13FBB7CF
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 17:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bEEv+Cc+NYzz/u5DaHgld520vRqx96INUQeoblFHguI=; b=BrhjQ2XqNFjEMjZodb8072kK1
	SIvyukU/U5Z0tkgT6U2eAoILhPY07UdgL4q2F3gtPdT2+KyMzmg0CVIs7nKPFGqKkDo8b3kW9C8gx
	HJXPrMMaHwmRmIh43Do3ve0aBelsOj7Y3ZF9h4FHYWB73vqfB/42xjrCSeReCs/+njcQ42Nk6G8i8
	xlswI09rSSdwz7fyu0Hn8ZULiS97r6jNV+cSh1gi2BCYFo2i7W4xFGl4SNOBFPwSQeLW0V14dhJ4l
	O2wZnY16UuFUnGJ9yjRIKJSVf88M35t9HTxnach2lAli+J9wKrhSKnt3Zk159yNz/khp1Qy4zRFkU
	ngmeJdmSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQBY-0005Qa-LN; Mon, 23 Sep 2019 15:23:32 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQBK-0005QA-MW
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 15:23:20 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MoOty-1ho4qn19VQ-00oqgu; Mon, 23
 Sep 2019 17:23:13 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
 <CANoib0HyZMifB0+ig8aRCVhWB8=YWhKnm8K5=6jg_s8=gN_bvA@mail.gmail.com>
In-Reply-To: <CANoib0HyZMifB0+ig8aRCVhWB8=YWhKnm8K5=6jg_s8=gN_bvA@mail.gmail.com>
Date: Mon, 23 Sep 2019 17:23:13 +0200
Message-ID: <018901d57222$d0ad4ad0$7207e070$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQMTvrm7wv5wN7BMa7ANzqLnK8ts/QGKbNvppLBzqnA=
X-Provags-ID: V03:K1:cVHLwbj25nSF3fdNtQrBQWwrA5mr9IbeKKbPIGNN/oL695uv1Q3
 7xazz+UCbdal8gniAR33Nr0GnCmGifXm1jPbNDsAyEJiR+hfSZACRJf4bTaWZ/8zJR+1ngS
 XBvodtrsL0wb3W6/GerWtWkRcYDNe9jixkcz2bdL0hiYyZqfbczCXR7QkW5FhmHykcvoeXi
 E7V9g5tsmjzIHYRf6DzzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p8nnlord4/Q=:Scri0DfHrWFXUI4cKCSYpL
 LFS4BKdvsFEf8t8lJnSt0kOhezIkQHDGRE7uViy9mJMMDMoyUMLUq7ZZxoqkSLjCLgKcoaTAf
 ZtM8uByMI8T3RfLvitLBVpGUJxUrLQ4gDslQAJuHLWEemd3PEuXaLia71By12X94UcEfHypP+
 GQ4IAz3JOfLdJUcUAsXLOY7Z/fCF1nXKMpkGYgvjNqap5IDmOtLx0J2Hbg+XcF72WKJPEE91m
 uf9xGfSBra9/nAaWOGv2ir/Np8FWK5ajxmL/tLAiYvoP1cYRrUymiSAy7m7KMcuWFJeQtNy2U
 IHpttKXGJLLk3H0FgqsQ2bkTRATkHeT5RMhR7BiWiMfL8zj5t6Q5BdLic6QjfE4l551HOSFUZ
 DYXRB6s8i504BKx2M0aufQprbErqhEHa833pxEOA26wuBwcs5OzKUbemVwpvrwzyvvoZYRYyg
 F3M5Gx+bjqtouI9rbE+N4wTF05d8oROyP5IW+EGx1BaZ2z51Mxnv/fPGqNXLKmOgDLvDaKDz/
 5S2PgIaiWllObUTfVmbKnl7DmTzHMy45Z1lM4u1irjFCOTD9PcoMaxZq0pSL3rnYYXg3ViqeI
 soCl06Bit73rUIH+vcLoHZ47JwAOFNTJnzB1PhnlGZysvsbpTHqN+SckANgWiZPgnZeR4hnMa
 Dqm56hoxJOiNBYiDkEuQXKehxzyrBL8PuADkrmWl45zWiVit9u+G2twV2zp7A3ZzF/8opeOPt
 igDlYtvIRh+Cxu61D7FE3q9ZpTQ2kJ21alN+776/9KHo6l0FeD5s0AYtNjHmvJOu+Fbb8zS79
 wKxhPJfmcL5FOv4iG3XBx2R/fTav/ZiFIMF2Yb1z1kITWMcdTdCdpwJdrn40KqZrDFV3G2zsj
 aIKI0c2lkN+h5X8ECv2YGZX142mDaC5IqFlO5BSz8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_082319_023860_7B13025C 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant
 ucidef_set_interfaces_* in 02_network
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5177310648666135435=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5177310648666135435==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=4zNQ+C+bCGBrM6=-="

This is a multipart message in MIME format.

--=-=4zNQ+C+bCGBrM6=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Dmitry Tunin
> Sent: Montag, 23. September 2019 17:12
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant ucidef_set=
_interfaces_* in 02_network
>=20
> =D0=BF=D0=BD, 23 =D1=81=D0=B5=D0=BD=D1=82. 2019 =D0=B3. =D0=B2 16:34, Adr=
ian Schmutzler <freifunk@adrianschmutzler.de>:
> >
> > If already included in ucidef_add_switch, you do not have to
> > additionally set the interface mode in ucidef_set_interfaces_*
> > functions.
> >
> > This patch removes/adjusts such redundant cases.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> >
> > ---
> >
> > This is not tested on the affected devices.
> >
> > However, the same approach is taken for other targets, and
> > network setup is essentially device-independent concerning the
> > changes done here.
> > ---
> >  target/linux/ipq40xx/base-files/etc/board.d/02_network | 7 +++----
> >  1 file changed, 3 insertions(+), 4 deletions(-)
> >
> > diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/t=
arget/linux/ipq40xx/base-files/etc/board.d/02_network
> > index e5ba7260f3..b7631a301c 100755
> > --- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > +++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
> > @@ -24,14 +24,14 @@ ipq40xx_setup_interfaces()
> >                 ;;
> >         asus,rt-ac58u|\
> >         zyxel,nbg6617)
> > -               ucidef_set_interfaces_lan_wan "eth0" "eth1"
> > +               ucidef_set_interface_wan "eth1"
> >                 ucidef_add_switch "switch0" \
> >                         "0u@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:=
1"
> >                 ;;
>=20
> I planned to investigate this, but didn't find time yet. The config
> initially is wrong.
> For  asus,rt-ac58u|\
> >         zyxel,nbg6617)
>=20
> There should be port 5 on vid 2 for eth 1 to enable vlan working.
> Currently saving any config in luci breaks vlans, because port 5 isn't
> defined here. The port 5 is removed.
> I suggest lo leave this alone for a while. I am going to find some
> kind of a solultion and suggest it.

Fine with me, as my patch is purely cosmetical and low prio anyway.

Are you just talking about asus/zyxel case or should I remove the entire pa=
tch (-> mark as deferred)?

Best

Adrian


>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=4zNQ+C+bCGBrM6=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2I414ACgkQoNyKO7qx
AnA9hQ/+Ml1M0YYKg79lV8DX5kTeefakjvtomE7oZipDv4QlZ8mjT+VFEpPrt2dZ
+JHoR3wOl0cvZn27GNgMBtthOKaTTNK2ZrIG3k6nZPE2yYX8ggaqg3uYVcwFudSx
9HGWaJRll6Xv3qJaeglw3c4QxCjSPm5NipbKxrvTQMfm6nKQDophXRDoImdd/Xtw
KXbIJEmhVtILKfI0EZppTwh19Ff/H1QRrntWYvw3Tit9vhX+Q74RSK5Npc4YqjmJ
KV9HJPyiOMzwlS2sausYnybeoGk2jgk90a3P6SZQTeHZ1D0y4BcJsHyIFiLysA/z
M8p1J/3d0EqueQ2UcbTqYw7A/iwvrnfxYSYuqOK+XA+2NLd15g81+I+okyDHLqLa
vnDebT/cU/JJ4JpBLl0LluvUG05MRZUxiBiaJr0L055hv6fc8Nj8l3pTmSHjLjAg
7FBItKA1OS+ZfxxPwdE6HNWRrzTtC0aKvcGz1yB1WI+VYoS0k4MP3VoawPymJ4kl
l5WPdr8nSvbKxxxb5qyhXeGyLTPMYMM3SU94TOEzEOoyTnI+aeEliPuHhMlsFTmE
/CNKtvwGzV6TKPZasjUSvecM4i0hcwzvE/ZG9txP40CvReNMrSSQVfaNNDaHAa71
XDi3RfplPrPxW7tm9OockkJeF+66UHxQdjqri08IYeBR7/zRlj0=
=0PC4
-----END PGP SIGNATURE-----


--=-=4zNQ+C+bCGBrM6=-=--



--===============5177310648666135435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5177310648666135435==--


