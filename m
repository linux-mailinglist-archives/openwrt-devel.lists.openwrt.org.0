Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7A8F5476
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 20:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dl03lvrsx6weLjjb27n4hKpGqsw6Xtjp4fhZm9UvNHg=; b=UIXTPlguvyISUG5QzH02t3Bx7
	NyXl8QfrtRR6b1WVeBghDtza3t6a+PJ4OopEZ1bGy9TncnusWFtbeQA50mzqAdxxfLpRlCfKVpmy9
	QXoWQdfNAwslKCwOJk5ojtA1NGgLtM5UjzrfaeDHOFl4zo9UVys/Qshaan25woX4+MdTLRnZrRRcZ
	75voPJMjlb5sO1A2hFa24DfOGWhj8p2TpaH6x1wY33sY9i0Yn1fyVDHTm3FFo2OleGz1wDV/fSdCV
	PHFjhjSu2Itwu4W594SrbiIef41cB3F0YRcJ1ZUs9B5kdhGwwZ8ws3PQLC/bVfKoMQBPyJbiVRMEg
	iz8ssvbcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT9Vu-0000sD-90; Fri, 08 Nov 2019 19:01:42 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT9Vj-0000rK-3Y
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 19:01:32 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MtwQm-1hdNlk0gsG-00uMWp; Fri, 08
 Nov 2019 20:01:28 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Christian Lamparter'" <chunkeey@gmail.com>
References: <00ec01d5940d$2df34120$89d9c360$@adrianschmutzler.de>
 <1823615.pomYDSgldP@debian64>
In-Reply-To: <1823615.pomYDSgldP@debian64>
Date: Fri, 8 Nov 2019 20:01:27 +0100
Message-ID: <012501d59666$ecd6d330$c6847990$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKzHqKlj5OH78XpjWn8hznG0cznzwJP5XxYpbQQVhA=
X-Provags-ID: V03:K1:Co1SPYqqlxAZWLg2pNNefuYsLmjkhx9L0hdlcOCoj6WQHjjg4Fr
 q2XDMsl4mWyvAWpAjwnKsewp3n3+kGM3VfIsRIaca8VgWWHDl8/9jrKXekpTyVYxE6K7lf+
 GuWuu3lzIqgYXNLcIos57Q5s+UFQ+04bOcdks8l+RNZLwt3ikOV6JsihvzOZzFGDwdTMxTm
 89RCUZtjro44yIszC+y8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cNZ+qYIYGH8=:eEfiyQBNW4Vpf2+lzLDzo+
 /Rli9sKwLhk/2m1exhiXJ3a7IhfBo8y79deoQrDS72+l7a5cUNpAmhHNS/aQmRwfWne1YZckN
 IVtzWPaW+YMT+mShof+U4k5KRVOQ4d2QC+o+7kXm3wiY+PHCKFAdNiR9djZqoPrwNi0fhFvg+
 ZUt72q5klD7a0RmrzJjG91CWa6BRpqxHU3BPeYd3DFlGZGntKeYv8VnGxqlH81BYKoqQQ9voT
 2B5mAS11CMkbo0tLWtqNA1dB+QzVC9KpTrcThib37S5iasg1bDJCemxZOtClFUdurufRr9Gzf
 2//z9LsQkgd/RzcTDPzog8B1m05HuQkUvpGnxBztFZfsz9roR9js3QHrTGQe1SRZ7MHg9B+iV
 jyWog8oeoQeo8BeLkJIoXwRKGIo6Hi4oT5grCCem279Fo5yWn9w3ettldvyTWhS7QoEYMI01h
 a7dlvIOXf/oqoELqvu+F4EMMgTN4Qy52LBon/zVDpR5GJcsvn4ZKIbcapbJ1XQ9vNisrP0/0Z
 mOLfPkfk2rhqU49XIjNvgWpIpWs8VQCH68L4G4tbzeL3D6OHB8sEj9pBwKCXM4t/cqNTGdj2J
 QpawuHZcasYMbN/+HDAdlVfp3ADjAdM/sxTjydgmL0YzDv8ll11d3uRePpakSxKSqhjou8nO+
 AHmqujKmsoh6pxRn0cDA3QnqqNomuPakGr9jPBt0gIq71ShC1J3MOs98ynDCR5TGLoy7FQyek
 ooNE4AShKd454MsJnUgBUEkw511HUELOvsfUrlBF+0N8tPWi+41baKO43KjB/WdtfWP+pMZ8u
 gTNSLUnff3A7lMsG3g01g48z3CcdwhNTdTA7Yap1izAIFxd0uGrcCr0QNL6GcMTrYom9JFR2t
 E3M1jV9V0l3DsJxbs9ifhKFnn+wAajJpMmM/NipEQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_110131_439813_D73D4CEB 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ipq40xx: Bogus IMAGE_SIZE on asus rt-ac58u
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1058619152024246631=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1058619152024246631==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=noIuYzII9uexCh=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=noIuYzII9uexCh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

> -----Original Message-----
> From: Christian Lamparter [mailto:chunkeey@gmail.com]
> Sent: Freitag, 8. November 2019 19:46
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: ipq40xx: Bogus IMAGE_SIZE on asus rt-ac58u
>=20
> Hello,
>=20
> On Tuesday, November 5, 2019 8:13:59 PM CET Adrian Schmutzler wrote:
> > as stated already in the comment of an earlier patch, the asus_rt-ac58u
> > on ipq40xx target has an IMAGE_SIZE of 20439364, which cannot be divided
> > by 1024 and also does not seem to match anything in DTS.
>=20
> This was soo long ago, but luckily I kept some notes and files in the cold
> storage... and since it's finally snowing outside, they became accessible.
>=20
> As for the relying on the DTS: Please don't in this case. The RT-AC58U us=
es
> UBI. So multiple volumes are stored in that UBI_DEV (or "ubi" now) partit=
ion.
> The original u-boot from ASUS kept a failsafe volume around so does works
>=20
> >
> > I couldn't identify what should be the correct value in this case,
> > so maybe someone more familiar with the target could have a look and fi=
x this
> odd value.
>=20
> It was the size of the original firmware back in 2016.
>=20
> You should be able to confirm this, just download the firmware called:
> "FW_RT_AC58U_30043806516.zip" and extract it.
> In the archive, there should be this file (ls -al ouput):
> "-rw-r--r-- 1 user user 20439364 Oct  4  2016 FW_RT-AC58U_3.0.0.4_380_651=
6-
> g6772678.trx"
>=20
> This is where the IMAGE_SIZE was coming from. From what I can tell,
> the firmware web upgrade had issues with the full ~48MiB image size,
> so I opted to 1:1 copy the size of that firmware file to be on the
> safe side. (The tftp method didn't have that limitation though).
>=20
> And finally: The RT-AC58U is in a bit of a dicy pickle (together with oth=
er
> some ath79 devices).  Reason being that due to the poor memory management
> of
> wifi drivers, the 128 MiB of RAM it has is not enough. When the wifis are
> activated and pushed the device runs into OOMs and regulary crashes/panic=
s.
> So in a way, it's on the chopping block.
>=20
> Regards,
> Christian
>=20

Thanks for your detailed look into that.

So, to me, this sounds like one should keep it as it is until there is a re=
al need for changes despite some cosmetic issues.
I primarily wanted to exclude a simple-to-fix error like a typo etc., as th=
is was a rather uncommon case.

Best

Adrian

--=-=noIuYzII9uexCh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Fu4cACgkQoNyKO7qx
AnAJqBAAs7IQmLrXsplVkFNrCE+bMwICqhvMRKjZG5GkpC9itThq0h/eAOzenYl0
TgUAt5Rh9wpT02/X/UFZK3GoZ3WPOpfy2GxtSt+n8UdO9V5s7a0jCGKkmh4YE6/j
d2HWtkoHr24lHfxRANxJanm7ezPL+pPPUfMd+8c8So3EB5Iuaq7ArLj7CVgm+j72
AMsaWBdfCBNxzAcVZAspC1DVSbxy67yLM/2WnUdTBcSGTQgLk5xSAMnEoYGh/iuY
qp/RiaSyeBaUoQNZLiZ47auJJLUqxuqAw6cFky1q7d2z4ESY6KSR7GCY3KFRBb8Z
EnRd7lx1wT4SD9HA0pHU3zbW8TSucpxig4Xf6GoEuFCnCENyiJgt0fHA01f7seF3
HHZJbJFx6Rr7KdZf0PAGJtEQeFb4k2gTKViApRh48n4IrJXXuGb7A9fZeU8BUb1P
Z250bWiweF/6GAIgVonWqpOfjYlCNDJTnTzlrxn7l0+ZbuYPTq/3p9ZAOOQBJ4bq
pyqWetIEopLf0yvX1pPyCyvAVj/Iw1LNd7SxeJ+XfIxIh14WDOKuisCjBAXViyRT
be3Al9vsKNliLHgmiLpg5hJ/4aOA3kZMPnfhHuIkYJb5KdykoDzYHEke/EGUNZ2X
hUvOh3Ya0tRE3tjvjZtLsexMCDBERwEMVaMVD81TMgq3Q4+EpMA=
=xgXf
-----END PGP SIGNATURE-----


--=-=noIuYzII9uexCh=-=--



--===============1058619152024246631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1058619152024246631==--


