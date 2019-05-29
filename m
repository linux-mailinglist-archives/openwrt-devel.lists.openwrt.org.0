Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32252E518
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 21:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XjiPxaouQVK70HUJva9T9a9Dy93s8fVfG1GlA2yE2hM=; b=EhcDDzZIWXYv8SL4hOxZ82uSa
	/6tTYdYyVNt+gzof6oC1qF2P7SsEqyPiCuVTggVCyx6uWqhcDtETShoOIGkPV1UkI9e5NZ6e8m51z
	Fjd33K88SJg/5yf1RtfjtQ+hjQDoQMMGDpFEvDW5suVoSg1xtZk8VwNcO/shBwIFD0V3niOP3zawt
	c8xBYGE45bkfs0mxL49O97ugxeTaRFC6uNWNfO1G7MlDPmSEmP6jqEddVrQgR1OsS5/t9zCohbbtL
	Roj1B3ZpbVEd0iDNIoYFxJ3dlz0lzPC4dA9iTNXBlD+yxWYy6DhbbaFqnu0ter3MHw9NqOsDGTS2M
	7K5eLgU6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3yO-00046X-U6; Wed, 29 May 2019 19:10:52 +0000
Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3yI-00045v-7L
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 19:10:47 +0000
Received: from [IPv6:2a02:810d:98c0:4a00:6791:2d02:f640:b309] (unknown
 [IPv6:2a02:810d:98c0:4a00:6791:2d02:f640:b309])
 (Authenticated sender: fabian@blaese.de)
 by mail.sgstbr.de (Postfix) with ESMTPSA id B59D92C5716;
 Wed, 29 May 2019 21:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
 t=1559157044; bh=A/6PjU72Y3vAoXWQP6M28ot0vVu2ZomujueR0WVyfb8=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=GInRckdRedOoEIy9HVilMAf8NhzZh4FNmXe8FPp0ZHL9Jl1eMEkdRiY7pq5MdkiLA
 1UCOoCgcsU45fiNOLitJh+sSCOMUe6HganNQnJBVOQ+b+PhW5qqX2DZjWGZ9kOtQ29
 Qbnda4S1t897thnEEqwKLJboSIqpYHjoRNEzxeqsjV79oBlBYyrClwseLj6067r9yD
 5seWK27etxWYzxg/IrSSXWfDWN89J3L7bzCnTD8J1J4kE7WGi+O6OzE0eQ/XZ1stfY
 x+idJw8oRZLHHFMA/+HUhGIdJ8gSdHj1aFvgCvje/xXBipZPCwU7Cd9B1VeVF2dA8V
 p0ooEAAbkpG8Q==
To: Hans Dedecker <dedeckeh@gmail.com>
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <20190529190801.14489-1-fabian@blaese.de>
From: =?UTF-8?Q?Fabian_Bl=c3=a4se?= <fabian@blaese.de>
Openpgp: preference=signencrypt
Message-ID: <abd38fdb-46d2-e358-b8da-ff1bdf583a1a@blaese.de>
Date: Wed, 29 May 2019 21:10:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529190801.14489-1-fabian@blaese.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_121046_427847_149AF601 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============4791282581107912416=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4791282581107912416==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="VnB7ITKot0sigvAKx1cvATLLcEgvSq7Wi"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VnB7ITKot0sigvAKx1cvATLLcEgvSq7Wi
Content-Type: multipart/mixed; boundary="oi0cyFGmcGeSmckogEinLJ6Xf9h7YwZmj";
 protected-headers="v1"
From: =?UTF-8?Q?Fabian_Bl=c3=a4se?= <fabian@blaese.de>
To: Hans Dedecker <dedeckeh@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <abd38fdb-46d2-e358-b8da-ff1bdf583a1a@blaese.de>
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <20190529190801.14489-1-fabian@blaese.de>
In-Reply-To: <20190529190801.14489-1-fabian@blaese.de>

--oi0cyFGmcGeSmckogEinLJ6Xf9h7YwZmj
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

I've adjusted my DMARC policy so mailman does not send my patch as attach=
ment.
Please try again now.

Fabian


--oi0cyFGmcGeSmckogEinLJ6Xf9h7YwZmj--

--VnB7ITKot0sigvAKx1cvATLLcEgvSq7Wi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJ7vc7QVhZ31uPwNHRNkkPenpIZUFAlzu2TIACgkQRNkkPenp
IZUuOw//TNvf7sYzXf5j6+5gN4I4O3WQn51dHtVyWFWw/UafbszxDI7aRntFd8RJ
1SPU7exaaOLkTPYx4JZp6wkTiyH+itN5p9wiIdGlnVTPsnrVTg4xAymgBa6wwVJP
wHLR6PeY5Z27j95T+oI1mD19cHfQclmhIljS9YLZUqQ4tofmNOainJeiKVQGVnQn
wzkF484jlf/se9h6NHvxm6lIunslgdg8UoS0sRBSpuyNy2ieAJmOZBC+wrj44JcL
+DkZYTiipCtwaG9MDWQbAEn+GEc5zn2NHK8WJ4ZdmovFOUcj7dFDFdoQwssm4IIB
m91qqeI5fu9btRVBpxuJqWtH4lS56RMWb01yvuoNLMsjHkaGD+pD3EdPETyYSF/F
MWWw/EnTVe2+6v5I5angU6mBBIMRRCjdRxywvIE3JfwNkMYH+OTJhc8jL4jHDgUZ
ODtstW5r0DZ3pgYtWwZuRyX/ALjXTLnYtUnS6BatYAgTaVQyJFslLQ9FyogZ4t/S
PAt9l0+ehGkTEQbzzRh613t4vc+fQq7tSqf9QUrEUSqfH/xZY+SZZj44Qypd/eHN
1i9S3OsNUl4Kr+w4Jf1vr71JceNK58f7Rq3NqXJx1qSY0NLK7x+yiUDqqAPGutMs
kd8uEgtnF1Tv3MI+Mrolb5kQXbSdB3xOajxg6p5mlFoDFgtZrpw=
=ls4a
-----END PGP SIGNATURE-----

--VnB7ITKot0sigvAKx1cvATLLcEgvSq7Wi--


--===============4791282581107912416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4791282581107912416==--

