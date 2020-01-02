Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B01812F18C
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 00:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mD+oeur6BeR6haR5hZzZI/PLwA3pXq7nfk3FJVpQ+MM=; b=Vr45fYIzA+zKgXaeDQPgCrBZi
	dizKVtwMwH+ytvBOocDKZ2dEtW4TIbTCG/puERyOEMoMhcLnruV6gYA2LbW7L9POLb+/Dmygp57Xj
	D1PUf7gyhuGbIPubDt5Dkf/Id8F7ULIRBexkDgE/xyK9B2PGXZgY1+Qe+bGcGIVwhaEtUYJIHhGPu
	4wAX3SZsEKWOTj6gU3PWzlBPB9r2H5pO9ih18BeZLDd/E2kOxBbM7/Go7IMF3RvuFhrnt4Y/ykZIq
	55erRFz7+4x6voHkdbihNBHvjbn8nsttWYkdfdCdIXWjVQZxBNh5Qi4eQSN2IFveAEKAs69sihgIq
	irsiHNkxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in9U0-0003vw-OU; Thu, 02 Jan 2020 23:02:24 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in9Tp-0003n0-Us
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 23:02:15 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MWRZt-1jFMV23zlz-00Xqjg; Fri, 03 Jan 2020 00:02:08 +0100
From: <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200101230148.25053-1-rosenp@gmail.com>
In-Reply-To: <20200101230148.25053-1-rosenp@gmail.com>
Date: Fri, 3 Jan 2020 00:02:07 +0100
Message-ID: <033a01d5c1c0$a85c98e0$f915caa0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQLcyIdY1H0USMXs5phpjTF7ux+BpqXJ791A
X-Provags-ID: V03:K1:zIT8vprKRwEymIMXeveAA45ejzikD8TQN3hUsrkPbwOEx4HVCpG
 9BgyYABiohpueIHG07r9Ppo7NcFKueqxAm3iU44tE1gb+A8g36j+3f2NzkaJvX+BbS1gkwO
 0nLrcMSeT6e09HawBn+Ky983GnB2iCNQlf3qvvVI738XrBD2AFrpCTvKf1ZbqypVGecYfBl
 RicgUbvQAzmXzGFAvMPTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HCbpaUnf4wI=:b1drKfDZ938jm7LfifGWcI
 Us/eBa8e5guTOUVVaFov6MXYIyElTMX4889v5zF74t+lrepcEO+YGcFGqqMRYlW/9aAT/Cvmq
 0oq8Ffk/YMengIsxETIjtCb5+gsVJB6/87mwc/reOaaulTSF36/ACyaPTTcO8IxeyXVZ9CcgU
 rMyHuY5xa32t6RSwU0a8F1craDH9j2Ii6Y528mSGh9U8bQuI28/I79vlt+hx7LL7nm/5wmiHq
 7e7tgddm1Xo1i5AUHfjs9ayd0KP7bJzGY59xxNs4mgwkDPXKWG8PRC0OaKC8mWbCN92CUw9mp
 oj3DdylhubMq9yk1//37drs5yK0GgonmDSbzKL7HHDMYkiL3u5xGelIplCIDM7ukSUe6m9zTU
 3yaADZJ1pGthA3opE/5vkhyatP9ccTVmrWOQGwuuYjMhUOAaojvzmzgVnxAHCazjs830Q2tXM
 it7Z7Sw70Sm/iy3gVWqBaCLFfib7A7pOEf3gYtaXl3QwpmtG3Xz2X6UnNM1I0ezz6iAc+kgLP
 d8ULwL9ayGI+YF9G/BiURo8BnPuSetvg/kaln2wl321JWXtvxwrOLhf6Am6Srezx4D21pnF1D
 ikh3p30gFum2j0KZjU9Kqr4cQRIlDT2EWoQnQ6U0v3qye1yVAHvmc50mh4M2DUgyoLJaUXZX5
 DwNoHvBxhz3JIQsRvBMt6HufizROXc37QxOmuVWpTmDTaQRt9UzLp8RxSsNCCKwobCTR0hX8X
 oIj9Ymn+soqVmebjDIp6DqRq8dDtiGDTJ8A4ZQ5l3mlgrEdpubdoyZJvxklMhs4TfAlEPRaP3
 q1LiacIIPCiyKuipiTYpbQmvY8DMNvWuBfNaNzn4e5iJr3ERR45ni7qyJZI0CXJIrHzqwBOlN
 8KlsPNv7gMQfqJDKLId8X8ggpcoVmExVDakhmttGo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_150214_289005_9D8A529C 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/2] scripts/gen_image_generic.sh:
 Replace -o with ||
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
Content-Type: multipart/mixed; boundary="===============7499330415625549618=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7499330415625549618==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=MLM/2MGXZl2XlT=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=MLM/2MGXZl2XlT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -[ $# =3D=3D 5 -o $# =3D=3D 6 ] || {
> +if [ $# -ne 5 ] || [ $# -ne 6 ]; then

I think it should be

if [ $# -ne 5 ] && [ $# -ne 6 ]; then

If you resend, please make the commit title lower-case (thanks for already =
doing that for most of the other newer patches).

Best

Adrian=20

--=-=MLM/2MGXZl2XlT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4OdmgACgkQoNyKO7qx
AnDGiw/7BbOjIvN+UX3NvqSD0cbkO3l96CUdEjDAKsSFl47hYcIaDqsjQKid5+u1
au1+rwQHj7nD2AIHHjHs+iR3UtQ0PWp4The/N1XMImWbur2AJL8gwzsvVU2LBCY0
II8gsBXnE4iPyrXbDCqR++Gq4pW8/ZlNOTFz9AFRgj4H/dw4LUZokIcgrbJeAdS1
K7nqV34TbuMnc2Dg9B7e4fDKB2MTkcQNnxb9F1u6Wj+XIMs5VWdGCfvCelZR4sKA
0rgmWnr1uza1DgAhtk4fbkZ5n2AY0cYBQFW7F0XmZ0Nxj/6k45dEzmNkR17PPiPb
peZWKz4ZWIYDd8eJJEiCu/ZazY2TaCfXDGGtefhcqRMLYLcLOG+r9vYv5UGevZH4
MQQZuezZ9nkwDveMNidlCxiOgyp3B5YogjX2i7z+8adDClOt2GdqvCIVZsNN8dVm
By6E7vrzk/qbYt0pSAYFk73pHpLqjXQWtUB+iZFSEomJqZU+gz3YQbRJucHqmUEf
94EFM25igtBxcjbKaEvaI2BySYY5YRCPEq2/SMKb04Oh87HIWxS67jky4MD2nmSs
SXze3yCWKw4oM40Rj/OrY4mkTGAxaIO/weuiVcZ0qpYMlufpv83hSNw3VUhWSDg1
y9rrl0Sj9Pf1Bl95QvDi0tPCsTxhKYJRYfunewsK8oCEtWjpgMo=
=tYGJ
-----END PGP SIGNATURE-----


--=-=MLM/2MGXZl2XlT=-=--



--===============7499330415625549618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7499330415625549618==--


