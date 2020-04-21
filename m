Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055811B2344
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 11:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BxwT/7JiGiFrGJGR3+HxTANGQP+H9kwLo7M+tuBiE1I=; b=nPdpD5vA6CCI706pZenHz25V0
	Eb4WVQxAKaNL8dfNC6UtjXGsnujOK2kUtM0/XctE/zesA8D/MWQAUEuNHxtlzLVyXI/8cdYudo2ur
	hN5dd8pypRC6IPUNzOLWbIsEnjrMT0Smdy0YtlMtIoVi5rcQ7YpPc3yE43Le0RW7Rr4rMH4xnYVwM
	uCeUSwrAiMQp2k/ZZ321NXyWjZvk50IerERn24/wrqn3zvtLVBtdcjkEj2t4lWljLlxYjVfePpQy6
	6XLgrr/J6WoAXUzVrA5rS39DdQdeaWa0JGlaXekh16YoQYoLlbSUm/cvPYaUT85NcGG4uY/Qm62Vh
	XN7MO25JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpZo-0004de-Jg; Tue, 21 Apr 2020 09:52:24 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpZa-0004aV-Au
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 09:52:13 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MrQN5-1iuZlY0ivv-00oWUp; Tue, 21 Apr 2020 11:52:07 +0200
From: <mail@adrianschmutzler.de>
To: "'Klaus Kudielka'" <klaus.kudielka@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
 <e8732ba1-9963-7b24-0c5d-017d840c312d@gmail.com>
In-Reply-To: <e8732ba1-9963-7b24-0c5d-017d840c312d@gmail.com>
Date: Tue, 21 Apr 2020 11:52:03 +0200
Message-ID: <001401d617c2$8491cbd0$8db56370$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQDU+1NUOd+JjTb0FD0iKlF0sWiNEgIkGSzUqnRs6dA=
Content-Language: de
X-Provags-ID: V03:K1:7aGR3qkiydREhXIZCf9iO81UbgLG2vi25TWaudLeFdcIgSBqTjm
 ZRRtXGTdDnwoH4Isu58JtAgDPWx8CxtDpiqS9ZYBAszqStUHYiRh2iGyuBsz5kJmMALD0Ws
 jdG8/JdgbpqV/fobYnHKcIAApi0eJeNnIRkEX5zr+YaUR6GX6lyUx+33YoyD3fOw7kX2Kbc
 sQC0JISsQ9sfzbTWx/GSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BNSrqadp3ZU=:C6mCZvVQsiIuMWtATSw3e7
 0fwYWaaWoREtPOg6Eew7qCCta0wIoVW/R0+GngwX/VqLBaM0WW1l3F2SGRF7HM4sa+VEnYa/M
 SW9K4SvAwr6AvinT1wi+3wp+ZSUacSBBWyVGVvtdWH3h1X1iZGnF6+Lkapcm9ux0sLWGDkChm
 nlx3xs1iZF69lH5eQunMfGaY6dBuJ061qtL1Vw919WSFqbASlA2pwhhl6isJ93rl0emzIBXCq
 ztzfho7uEgtIhwNed+7nUHDUKWOIH/bYc7mQiFWqSgGuK5gQbIExIhtaEDxkv35vqPSnwQal8
 hYIF4bjMVvgorzhVF7lghonEWycbtOLbt+DGN3NyIlEvodz4mhLf8ufM03PhuP1h+uZaAraJD
 sEqfk8j7kgj6A1jS/vUyYte1DZ8hyrwKVeL2RF7ikpFPUWFiSro02lvzRdqg3rMF2TIjAEjA4
 23CGZ8NCevT6YDXytoWUvmRyh/Hxc1R+yikQG9OcPaPlcGMcUhu4JFXDWiadTinL+LE+Nj1lD
 2+/Is6IjwEQTnQtnxSY4JzA2NaYdBv6u/ca3H6twiZ2w5cQjymi6jvPRukbjTZgzoibwW4h0m
 s+glW35mCURwUb2ea41hXpkT4S7n46aYYIHsQpRevLPIbpINgvdmbQICJ4icUG4Il/gqM5Xgg
 HZtPZelmjSNWkjJrX9q5iaWNMvOkPyyTcpM0o03shUnR3gepISaDdAel4e4qmB2ifrqL85k0j
 OcFjgnx4B/hcVIAJq2xDloBqnzwaPFrIPZBdGO82YQwzFkIUDUjcK7X6i59o1pXX9twEMow5F
 KotUqyfy3wGwnpoqz2KmAQRSAVMZ6YF6BOLsdwl8WO9W6xRKhGHMmRp+3dGaYGygGZ9zcVE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_025210_695109_557CE0DE 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============6146195908835810275=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6146195908835810275==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=A+FZVpAyqJMT/n=-="

This is a multipart message in MIME format.

--=-=A+FZVpAyqJMT/n=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Klaus,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Klaus Kudielka
> Sent: Dienstag, 21. April 2020 08:46
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
>=20
> Hi,
>=20
> I own a Turris Omnia, which already is on DSA, with lan0..lan4 in the ker=
nel
> DTS.
> On the box I read the associated ports as "0".."4".
>=20
> For this particular device, Option 2 would rename them to lan1..lan5.
> =3D> Please do not enforce Option 2.

I wouldn't go as far as forcing the numbers there. This was mostly about wh=
ether it should be lan1 on one device and ethernet1 on the other.

Even with option 2, I think starting at lan0 or lan1 or lan2 on different d=
evices would be fine IMO, just like we had port numbers "defined" by vendor=
 order beforehand.

Best

Adrian

>=20
> Personally, I would prefer a combination of Option 1 (if devices have no
> labels on ports), and Option 3 (labels on the box should have preference
> over kernel labels - user experience).
>=20
> Regards, K.
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=A+FZVpAyqJMT/n=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6ewj4ACgkQoNyKO7qx
AnBLew//fwicOfRSlYYOQbP9rbFlxuuvMVz2lA61bBCy2XQ6K2fzEcR+FCCMSUC/
FYam3s/XMgTJp30pv4rpiofs6UzC4drwDCRrudByhvSNdXwZhN2asLylxdZMJmWb
wVSygkrKHyLSj2CuZYW2YyUxSrIqf7cqm2UrLXIaNurqv40HZ2evtTlz+1w5Xaf/
1uWfH1Ta0VlPWFAcPznWIlEYsSZ9U2i3Hlu2PIibOqPDuvwwnq63F/JfLvsjFoKh
xluap8rJl5QB13sWFdtZ7JOE1WLHBt58GtBq4qXn3aiU0py0cklxRDD0XHq73c4p
X3/nunQGQix7VfNdcFtznLGbm/UlhypKDhud4JO7F3ljDoZQ+qTEoGkx/yWoVhbV
zQRpzgvRWVotkQnT5oXmNgvuUoQ6N24X/IFNla4bUDpD53u8r6DzTDnV9zzo6HNj
DHWASvXuHeP6XkP/c2x9xhICMiV0H3T/96bYXgT584WwkvPKiQ4k0eQUOK4PrIys
Zj9EtpbiMnt1/2a9yU+OvrSX9a0lY8KW+9Iu6oR0sf7OngJQq8qutipS/CcADr5B
oumWW9Yh+GjIyJlKwX+7VIxL5pjA8HOXh1U41tq/QcPwa1e8anl9l1zEQjT1FW/l
/vp+krE/LK3s+HJzj5Ip4KvzX1echIFCQRB2Yjn1OVvoM6STC7Y=
=YHsC
-----END PGP SIGNATURE-----


--=-=A+FZVpAyqJMT/n=-=--



--===============6146195908835810275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6146195908835810275==--


