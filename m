Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C4A1FFCAD
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 22:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vMqygm5V3YZctXbopXFT7ByurR6FzvV/d4paAz9GpVo=; b=UfVO0uAjG04EUHT4PaZZHeDT/
	ReR3+OJZyby5S+HDXsFg8FXyjmIKA8LnPFSjsvdvGOhFxWydNaqp87RanTrkm/lBE6EzA5ojcqV11
	jeM3L5/yIehii10J/pDXE5VPS9ca1t9joCdUM3nO2CNsvpDQvi4JaDC6Q9QkqwbiJ21lutrE74Qbs
	3CuvrRueXr5OtMKuqBX1q7YgugUbiFHixFDm6/9yKQc+fxJvVat1JYcWetsmaRdG17ZZiZM2ZOpg2
	kR5snt3QGk46UaKpZg7bTY1cc7C+d6rUi1quBQljzu7H5KcHC+dE48NDC4fe116ShMM4CIts9ygpd
	vMTB/ijcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm1KL-0007cL-QN; Thu, 18 Jun 2020 20:40:01 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm1KD-0007bH-UW
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 20:39:55 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MTiLj-1jKE0t351p-00U38g; Thu, 18 Jun 2020 22:39:46 +0200
From: <mail@adrianschmutzler.de>
To: "'Martin Blumenstingl'" <martin.blumenstingl@googlemail.com>
References: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
 <CAFBinCAyE_sH-FwqSEDOO74b7xBxc=vqzK758UQQ9pN2NpU2Eg@mail.gmail.com>
In-Reply-To: <CAFBinCAyE_sH-FwqSEDOO74b7xBxc=vqzK758UQQ9pN2NpU2Eg@mail.gmail.com>
Date: Thu, 18 Jun 2020 22:39:46 +0200
Message-ID: <003a01d645b0$9acd8850$d06898f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIP/Q+0t7kLbxBBIGsYvnRP7DVk6AGDuFcnqF9IfKA=
Content-Language: de
X-Provags-ID: V03:K1:EN4wzSNiWGwtC8AFJtKwXN0R6IVpjunLBfwjHi1IsWGs0qW36dw
 bQ0qOCiJBOpIzQka3z7xC4GDg/KESMKwpXhKcP+4dU7tBoWzZiFPwLuzx9eJCp6HliGD5gt
 oO5sXepFame/WA0VXF9kNnLc26OzUk1nknnplXMlUj+wwRLssRrpUloKuICBFF2ihMux81y
 ZQaFUGkLlq5mi+uefXKcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ul1xcDJIUhk=:kp5Hvm/Q+wKUw6DJsO+nbU
 sUOY33AxrmBhBy03dOZPYBELmf0fspljxEV16ywqVTihRVh5wqrODjon/K8J/emF4mMO+m+/J
 Boq8CBbLIWoj3t7t1PlNSr22KeSoY2pxCN6+G8rw7zUYgqehs/CisbQlFRQlu6ObeEvz08hpL
 dTy/E1neaEhJAEPlWs/K6Xwa4AD3CBAoqUVpujE3M+2eeO/3RiNCUklIDmeuPxEKdLmMT+iqv
 PN1IWy+oSF+7q0J2U/7z9eDbnqTDCMpNDDCINE88GjnPmkLSrrUGEmitDSR56E7NpYL1OvTng
 ZSP1wXVAVyKmrTq4hkyvAxaZbBwlvF1XgCJv0e4faQwAE+WPqn24BzgUji0VR+Xk24qIgFXCl
 g7bbS/Q6ndUY+hdwfPVXBAnEt7FIx/CNZlo7yRT+tfGrm13MHPHbp78t/7HWt0nK4jPic8Tw7
 TPUS7bShczHcp0meJ9ONW40jQ4bQVrUhTUS1hmGQVoZzrX/6Z91ppj59dG5EpfV+3c9ub/MUF
 HDV5D/62SMMT1czF6kznNkM3draAK+MrsXq7ZAXYgZq0TEhPrJyWpqOHCGbp0cTjzXa0dQHO/
 IoXT36P1MIw2//bD2UHo29nNs4Tq9xxRx7h8Q77/Q6wbEdsiYqyzUNxEmm4fQBUJKDmprpxwD
 /dW/ILPyldRC6vAGXv/Wc/Vchp8RU4F5SmREr+xu5FaRfI6TwnW0TpfV7loctiCKFVV6PMJtc
 EblkLSG187u3qpcsrMzf3WL/NLvhu9mSzIoY1UKyBeDroy1TELeDrKy1gpOO0pjY4RpY18tzv
 uBAAxBdhDLSnzcCTDk3KC7QeneDstwTvyUbVykigBpHqy9xdYAIqsoppaqdB07fCXrpfYAJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_133954_273616_27DC2592 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: fritz7312: set maximum speed to
 100 mbit on 5.4
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
Cc: openwrt-devel@lists.openwrt.org, 'Alexander Couzens' <lynxis@fe80.eu>
Content-Type: multipart/mixed; boundary="===============8942063331044296318=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8942063331044296318==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=I5+SblDl80FTYo=-="

This is a multipart message in MIME format.

--=-=I5+SblDl80FTYo=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Martin Blumenstingl [mailto:martin.blumenstingl@googlemail.com]
> Sent: Donnerstag, 18. Juni 2020 22:26
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; Alexander Couzens <lynxis@fe80.eu>
> Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: fritz7312: set maximum speed
> to 100 mbit on 5.4
>=20
> Hi Adrian,
>=20
> On Thu, Jun 18, 2020 at 11:49 AM Adrian Schmutzler
> <freifunk@adrianschmutzler.de> wrote:
> >
> > The fritz 7312 does not support 1000 gbit. Advertising it makes it
> > worse. Some NIC will change to 1000 gibt and turn off and on again for
> > ever.
> >
> > The previous patch in 36f628910b8b was only applied to the 4.19 file.
> according to [0] the 7312 has a 10/100Mbit/s Atheros AR8030-A PHY.
> Do you know why it's advertising Gbit/s capabilities nevertheless?
>=20
> I won't say "no" to this patch
> If it's a hardware issue then more boarding will benefit from a fix in the
> ar803x PHY driver.

Hi,

I don't have any clue at all about the problem itself.

I just found the inconsistency and want to align 4.19 and 5.4, as currently=
 it is effectively a regression.

If you want to address this differently, go for it, but don't ask me anythi=
ng about it ;-)

Best

Adrian

>=20
>=20
> Best regards,
> Martin
>=20
>=20
> [0] https://boxmatrix.info/wiki/FRITZ!Box_7312

--=-=I5+SblDl80FTYo=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7r0Q0ACgkQoNyKO7qx
AnAA6g/+M/T+8xKWuGHLbZ3HZ+a2IkxXwo+vkzCJJ9RuBlHnsspCDUfF92B7fq6b
lERF3JyrMx+7CAtRfu3BfwqGzgI5+Mwj5cTC7+J7qNxi4Ui/ob12vrDLCGz1ewhC
9FAdiMtgaJLQ2U2PDa0ECfqjkbxD9+Fw89XiMbutgaMIDIxumHxHjDSLWlDXMQIG
qqj5DtUPTEBAAtansOU5dVAqz/5nlXZlTS+WcqmEKWmMoRxSp5wQyGedoVkZDQ2y
lYEkUHLZOdc6zE+fb+3z2x640zfn8Nl7xuCAHPj5Vb0Tc9A2bQyQwRlMf9wyV49j
YV3WEo4mUAC3tduM43WQjGk27iIBvHiOrN3gruKNBKDbzQSc2T9xnq8+wM4hNVOs
DrUwm8+ubrmICWP+Uq7+BFL+uUAPUJLU6ZwpO0jNEOgZbzGYSn9XqaGlIFDqNEC3
b5qZcXrmeEQxXRvzpTq0R6YLglgDdt4mQ0Zo1ex1e73jIpNcxsou2W+oS38NwG/s
zLREI8/VWoxnHLq3O+5CP2cUqU6hOXt3EIc63hgLw1YlUuDV3MH/eBTvElKWl7VD
HHJvXOm/8vn140Dv9PqkoH+xW1lY8IQjIMFp3tfsrlE7KI4HPTMoVWZNNoIWaHf1
L85l4ozjjuK26vwZEqccpd05NEZ0devBj6fM3PNbDG2GX+sjkrQ=
=wZ/d
-----END PGP SIGNATURE-----


--=-=I5+SblDl80FTYo=-=--



--===============8942063331044296318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8942063331044296318==--


