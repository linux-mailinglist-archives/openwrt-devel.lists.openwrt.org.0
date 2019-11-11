Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DBDF7458
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5zUt3wjKa8VN56nP22gU1kiyvrUuG8NExlYG0spMHtw=; b=SinuOKRMgr6mUxWB1RpOctd7m
	hbdKGReuBVUJBQ0RlbhRpCVmtChduvG21hjF4SDeyhanGlrTLJR+Q+HHEELlCEaEu+H07vmiXraaA
	FwGKMtPsaGjQt1tvalYBEDzGN9rmGI34KgoUOYCDEW8PVMmcojmqB256DMCA1Yu3cNBN6F6zx/TqH
	AL8gzQlRjS2wAKI6j/9q6XVnenPmZ7VH5w45VRzegt0plp0b44QDgUojwIpjlYdKsD2AJUJH8B4Zo
	4X3igVoADdgaXS0nKaQqOwSBhdetcTCgHmLy5qop7JSenq8gmrz7H0S4BXgcmpujbuGtzfWiKgvzZ
	GGebYKIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9C6-0002n1-Nr; Mon, 11 Nov 2019 12:53:22 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9By-0002mN-OP
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:53:16 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MmU5P-1i3dzi0H5d-00iSAJ; Mon, 11
 Nov 2019 13:53:11 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
 <20191111121412.GV1190@home.paul.comp>
In-Reply-To: <20191111121412.GV1190@home.paul.comp>
Date: Mon, 11 Nov 2019 13:53:10 +0100
Message-ID: <020301d5988e$f92ea7a0$eb8bf6e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAHHmw79AYYwApYC66GG76g0w8RA
X-Provags-ID: V03:K1:nhUqWD/YYL02Pwwx265HyNzM9VcPCO/wBbgn+Y1KVmLPnMnuxEp
 p8ecxNV+tlKVAhfeIVc3HCSR+GdDvhwBRKl86gD6IooSdmPVhKBSkmOXbvus/GHiOUjNM0z
 wJLn+v7pNZN7bdKxB+wONnIc/80R/l1gGRcw87ckeFWAvXx9XROi1LD4hhr6k7ZWxizA/A/
 Wu3rR03+qZCe2uTlammTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YIhf2pbHJCk=:2nCF+l9JJ95fxn0DMLfsbA
 1rJ4mlnJmN6utFDgGXFZYHTYwg7yS7DsWOwILM1QXaJy7cPSAT/kliMbSw531DBfm8HBOJe9O
 Rpxc1ymsDTQ+7w2UgjD1T7G4nDI6dvDFM7qfLO7710k8PGxVH3jTvNqlLGesE6MNCVf4Sc2Tj
 nEYFyC5/T+R4k66LvbV4u+IvPNDcnwbhyo6ieL3i0CT1vVxz6AlDUrErpyUhhEIZmf1jMSacX
 rEFzbhvuTzUUqWt/6RiKks+9RpnfkjEetTVrOgjxvI+aUYA8Yji+IP1Fm1P4X+0Ifl7ZSE8mw
 7MACgl2A2dP2x6Gyq4aR+NK3IQ617wmiA/SFqLc26bT5n28xlrMm4Vq4AuR2GRgamNAs6XTJg
 wxVHsO89binj0jsopU0AadMmWpMHhzf0obmKOG7KoOktkV0XokvORrdryNJhzER/34Q0bwdyg
 SIo7B2J1+uUWr2LrCQSjReDSDTFcn6lVDsAlp3M9OCx6HpEA6PE/m5Pn4O9CTfgBE8baKuqjQ
 nTx/B+W23Rov7hCpquzZXwF9cCPFtd0usPWrGNXFsED2L6WLOMQSyu+z8I5nfkrK+co5d/PoV
 dMDA1L2kkxT3Bal3zVJmxeXagcxSHKmM/cI4mCbMJ/qX7nCPgP71ZSZlQ/tWJlc/Y7w8cx7kP
 nOjKmIogfoNm2qIETKhACvpmnbPdVIQRdVgJ8yQvQvY+CHTNjZuscDLtE2JLzcpDI3QCoBR70
 SSbvlkB5HLZqM1Vc5z4i9kGnmza1OCYGHmYF1zTwBZrcYCNPQ3vLFPhBUJOBl9eNKGLGz8XTH
 YJj/AwcBquOkF4fc5szHwFUcsWjnZNt9DzRBmJpQnHnVO6HZkujkO3/PNB+/lKuX6uv1Q5Sqo
 1ySdjSor1pxBI/t4ZGwB63uh1yY/0htAM24jkI23s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_045315_089618_761CF42B 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: openwrt-devel@lists.openwrt.org, tmo26@gmx.de
Content-Type: multipart/mixed; boundary="===============1353998057094631955=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1353998057094631955==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=sIu/wg6cbf6fAd=-="

This is a multipart message in MIME format.

--=-=sIu/wg6cbf6fAd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > > +			label =3D "dir-615-e4:green:power";
> >
> > Sorry for causing confusion here. I have had a look into ar71xx mach
> > files and they consistent use "d-link" as vendor for the led
> > labels. Thus, I think it makes more sense to revert that to the
> > previous version "d-link:green:power".
>=20
> Why do you think so? If board name is a good idea and allows sharing
> led arrangements (and sharing is desired) then why should we stick to
> the old way of doing it?

Because with boardname-specific LED labels you cannot share the LED definit=
ions in device tree, so they cannot be moved into a common DTSI.
Despite, if you had several similar d-link devices, you could also share de=
finitions in 01_leds for those again.
But 01_leds is just a workaround for stuff that cannot be defined in DTS, s=
o IMO the impact on DT is more important than the impact on 01_leds.

> > Well, we still do not know whether they are present in vendor
> > firmware. I'm still skeptical about removing them.  Nevertheless, I
> > won't prevent you from doing that, but please remove this comment
> > from the DTS then and put an extensive description into the commit
> > message instead.
>=20
> I've made specific effort to flash vendor firmware and confirmed by
> testing on hardware that the vendor firmware doesn't need those
> partitions. Isn't that enough? What important aspects did I not check?

I haven't been able to extract that precise information from your previous =
comments (I don't want to blame you for that, maybe I just overlooked it ..=
.).

If stock firmware works without those partitions, removing them is fine for=
 me. Please explicitly state in your commit message (after telling about th=
e removal) that you tested successfully on vendor firmware. :-)

>=20
> Regarding removing comments in DTS, this I am not yet sure is the
> right way to go, please consider this rationale: DTS files are not
> only OpenWrt-specific, they're supposed to specify hardware
> arrangements for the upstream Linux, and for all the other low-level
> software that can be booted on hardware too (such as barebox and
> u-boot bootloaders). This said, whatever can't be expressed as a set
> of properties should still be mentioned in the comments so that
> whoever is dealing with this hardware has extensive information.
>=20

Well, I do not think we are using DTS files like this so far. Normally, wha=
t's in board.d files is not added to DT "again".

> > > +&eth0 {
> > > +	status =3D "okay";
> > > +
> > > +	/* ethernet MAC is stored in nvram */
> >
> > Remove those comments. You are setting up stuff in 02_network, which
> > are relatively standard, so I think extra comments are not
> > necessary.
>=20
> E.g. when (if at all ever) the kernel gains support for parsing nvram
> partition, this comment will be changed to a proper DT property. But
> it doesn't mean that a person looking at this file before that happens
> should need to consult OpenWrt sources to understand how to deal with
> this board properly.

To make it really useful, you would at least have to add the "location" in =
nvram to the comment, too. With your current solution, you'd still have to =
look into 02_network to find out about that.

And if you then really followed that strategy, you would also have to add c=
omments for netdev/switch triggers, the caldata, etc.

Anyway, my opposition is not strong enough to reject this right now, maybe =
someone else can provide an additional opinion on the subject.

Best

Adrian

>=20
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=sIu/wg6cbf6fAd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JWbIACgkQoNyKO7qx
AnDfHBAAxnVfN2qcmtlcsItC3vF8X+pTK6MPXFY8ZTUCquE+ezLkgIPYO6ddosAY
Z8H9Ij5MyP4RRbio8S3ekxDIwmgiEwqFRWAEQIlWpxZfChZIJiq7zoGUju/SNRjv
CTAULJWVGIjqUY5oSjBSVnpjeUf0ji98/dXjvnSWRXMqeWSUjUO/ugpBvnvBYetu
apTDS9TZ8XBFKMDFjKJ6jgu0lpAvwQCp2BvfR3Jw0ThpBD69/elc9/Pjj3QNYBoH
KxbJRpaq4pjelmkHZZfOeB4VYE++hFEeJ3mWvLORJI7TeIots6m82dfDH56WPU5y
szauveaG5p8xXt9IEdvLudIiXpKohPPUFaU7eelUZHlqEyKJdrysxu3g0STgUgqZ
a857nv+m+q5mOWrnS1HXPqBwzsEyQgLme2R8hdJrUiUTbCnOMZbXAgW7+Xtr3ClF
BgldcpZQFRpURmJlbp4usRTxASfonFRZfpWeowYw1m0wXYKCTAVjKJvHcBzVfvc8
wSgBtAKtPAZO5zvk2hfrthlOYWz81gXK8kYQ3Vw3omq3AFj+7s3PyxckjZ8X+i3w
3k11ABqXLjF3DYXGjJ1Oezd6nNBBpHB+s2qtu9X1Yjxb1BpbW2+FLa+TKTWkqdfN
H1vuNQMKLDCVspba+lKeLSaWX+rJYj9xp/QXt3wWTh+JUVqeNyE=
=9sT9
-----END PGP SIGNATURE-----


--=-=sIu/wg6cbf6fAd=-=--



--===============1353998057094631955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1353998057094631955==--


