Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827ABD9C47
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 23:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U/8oIE3CW+nOekVWPYF7uE8hEA7ojU8ily21XK3xTHQ=; b=rgyAUJwmq0eUQgyCNaWEXwXXk
	vxnczYMwY/HOqB57wTEHOeYeBN7qLmyv/vDR3hLCVYFxkjg8WrmxZZggxMy+N42gWzWPVsT+bRnDL
	NMDfLmL2Oi3/CYpodjrd4JRWb9tU2J6FJpjkHaaB+MdSF63uKYLmRFswcyu5NkEwHoyvSHV14gARc
	KWMZes7L6nAk0f+dQAqCNQDt+ZDYYmvXcQlRetxjTk5PvK57zNxRTt4KY4Tmqa4mdhcjMIDFeZCRP
	dw9IcX4Ju74TsH9wjr+kMCZSOJ1g4xG4vGWiBv8Gu/F5xbuf8+Deb5bO8RbGcMbX3QpLZ/53rrbcm
	fOCvrIi1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqZO-0000zh-Cw; Wed, 16 Oct 2019 21:10:58 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqZH-0000xb-Lj
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 21:10:53 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmlfS-1hb5hA242g-00jnpe; Wed, 16 Oct 2019 23:10:46 +0200
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191016123722.70774de1@kosmio.komorska>
 <20191016123951.0ed754a4@kosmio.komorska>
In-Reply-To: <20191016123951.0ed754a4@kosmio.komorska>
Date: Wed, 16 Oct 2019 23:10:45 +0200
Message-ID: <009001d58466$2dabebb0$8903c310$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHEB4j9R3vp6W1iBwY5dRX5ebxvfAIiz5zAp2+kwoA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:JbR/oAb2q9iWefivdSx9MQQbi1J1Ube8ngapKi23leKEbAWs5z5
 98+e++0/fHI0aHz+oTLJQLTBp4dhhbYRaaZ7dD8hLP8rL/6CQylM7l36MnLF5BPJWZBtHSS
 lkY2OmiptBHkT+J8FuF9w84h2THMZf1B0HTnSa3q9SivkBCKBeSg2d3bDTX4P4XFU6xHuxp
 RD+meNguQ6aV83yJDk9NA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:psfXgA7CMYU=:l5ICZR0Xe56SfPy5OW7mYy
 Y9tjYgeVlI5QqLBghT1g2i/CGCJLbkG/0Ni99Tkm0CB2CuSrM9sBd3Aga2gtRXBA6hAwMEH+G
 q77Z/z6CDvwTlKwAthBrQRT2d1qAf4pWQ14TdeNxbOz0jbJJXbcEDl3aPW0jtA662xYEY3b62
 WBTwZlHUFhh84Trze3PWTdlIrX4CCaG8/tsddzObFNtsqXhNGqrXyYAKPpRUGMmCTKnmCDOq2
 OW+ia1Yc91MXiJ6pS82oX4bgOjTdCUHchbInBXIPjRal4YWKhpfMhuvtLtxpPN+OTvaugMbmZ
 xTGLhdEHmd8RK7XN2wvD0Z5mIKNls448bG5tdrfodu5G7bAuPj0RwqZu7TiCGYVOMQ0CrXSyE
 g5pzNKy/JoZ7rAp82yWCMBHlI2sAuJtEeSB3axiwdgr4tdYnpzEjh+w+RNaXBdIzhEYHWBoLm
 8DGjSNlsqgjnLjBmb8iFbqjigpN31dfHNJ985UoHyNo8K5tHm9e9clSH/fQbSPjimzplkrBNy
 MpgSdsFdQwKnlPXKmWjlysPIwQMLE74UHig+sDh3yffzAmqrvQaOV2tk8O8dvcj/gYVcTgkWh
 hfSdM+fw80zZstPGKzLV8c5TNXoIuvy/zs9TVNy+dOAq5gsVusV7pAy73kitMS7VAMwyV3s/P
 k8k0VFZcpBNSASbd6YNs1hwQjh0UFpHi2sMWoxywXso/bl2smJCDSSpwtViMOW+xFxqwYPbUX
 rZM5ncN1pzSfYbNOLpzxokyCwunN9Y+2X7+/vS9c92BJ3n4pULAKubEbtXc/ab2SsTr2uXVvJ
 aVoULbcJ0KAwqd7Tc11zrgoOAiF5VtaAh43XAZI9Ods5ftCdXF5wAh9R9dEWvQSe6tDj+ZJ9S
 ub44YWv8qhsHdl7v+DNS/XgSq+2xEoxxR/DJgKbZ0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_141052_006592_0EC72942 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v5 2/5] ath79: WNR612v2: improve device
 support
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
Content-Type: multipart/mixed; boundary="===============1232671829840710487=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1232671829840710487==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=fYwSakUOxF+pV4=-="

This is a multipart message in MIME format.

--=-=fYwSakUOxF+pV4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

>  &pcie {
> @@ -116,6 +123,8 @@
>  	ath9k: wifi@0,0 {
>  		compatible =3D "pci168c,002b";
>  		reg =3D <0x0000 0 0 0 0>;
> +		mtd-mac-address =3D <&art 0x0>;
> +		mtd-mac-address-increment =3D <1>;

Sorry if I ask again, but I do not remember whether I asked this already: I=
s there a valid MAC address in the calibration data (0x1002 or 0x1006 ...)?
I just can't believe that eth0/eth1 are set from art but Wifi needs to be c=
alculated.

Best

Adrian

--=-=fYwSakUOxF+pV4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2nh1IACgkQoNyKO7qx
AnDrExAApK2G9R8BQ/ioRDwbvpfH1b7KCmyEGLR2jXXr47/GlphAxON1uyF6gnGJ
e4TzfanhQYjkCmz7p8nKI6aLJaciVk0SPqS3up/KvhatauPRdqQzmT4Md7FKBmDn
jMXOTpQrIvsihJc5JxDpQ54vznNaLXd/ds+3KQnVPT+H6oxIxaiSnsGcFoI7zVBD
Zq+XX4JHd5IPEPLOQ6YnoQUkykZMwKXVwDN2+v0LGYUKx3ksiri+XLuZ8pcNapIT
AouN68Bx9CRgyBrvDFoY8G68jxzOIHHXuv8jj0RDgwkrI76svdvucEODLm/P7gdv
hSV65mQL1+QTA7BstE/l48Yzcc1LXrhVy8pjqNgwGRWukm5JCrJkFN+Stp5N5IFU
tef9MyRcQK6tnxE9Smam54QMlMBH7pmICdL/udYYMiEhMbHfLEji6Fj4hm2HMvpV
yzX6xWTo3bO3pXERMkw2MQPuJyKdUYYUKq9pgLyNj5ghODp+P4lhxUXsbpubm+NQ
SJKKLDrKw8c+t+TBUIG+kZK1s20QxYvMmpc4r3suW6kOnMZZCBbvY/zkCp7M5MBu
KetGFGypqDsPFn/sWbvKU7V9dKPS4OurQC7c2ZXZ30zjhIlOJ+djHlRIftFRaI5R
vFp39+K25baIIvAKxfeLhFmqHy4vY14cFeigNV0m1FQZc2pfZ9k=
=JL+B
-----END PGP SIGNATURE-----


--=-=fYwSakUOxF+pV4=-=--



--===============1232671829840710487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1232671829840710487==--


