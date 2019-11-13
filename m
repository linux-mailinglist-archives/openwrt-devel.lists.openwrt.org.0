Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4373FFB0DF
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 13:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EidmHHSiEh0gyi3/DYpbvWdOro9+2sjgiZtsaPIh/ho=; b=Vz7QA3/OmWyJKq8/FVgHjVa4w
	NMiy57mvdZ/qcR23WmwPcCaC9f83aQVhrnBWgkypOK0wvP61CKZCswb/qxeXxuGqp50QdK9p69wvZ
	uKhEI68dO2YFmojP1a53rNjgBRTxtjvaMwbNAks5p3GNoe3JaovZi+ZAd7B5Tu4ySPRbOSWtH6w/E
	D7ZxVMSrunbZfpLadr6I1lTLWdOkSdZCjxU/DJlTNjIg69w2/NpIrijoBQR/YTRSQEiQ5ci9tvQTo
	dxmHjXWEIwGg4GYnQQjYYDD4cfvu25+qZnuXitae0vK4/pY7djDiW95ClRNFJuynYFX9fGzPTBSot
	Kin1ni5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUs9f-0006os-Tc; Wed, 13 Nov 2019 12:53:51 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUs9X-0006oN-6d
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 12:53:44 +0000
Received: from t480s.lan ([193.134.68.46]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MfHMj-1hwtB40tNj-00gl8M; Wed, 13 Nov 2019 13:53:37 +0100
Message-ID: <e6966e565cc0b2e13fbbcbf6ef8115cc9bd619da.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: e9hack <e9hack@gmail.com>, openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 13:53:32 +0100
In-Reply-To: <a1c02db1-b5ae-dc9f-a3ac-aba2e1df9b01@gmail.com>
References: <a1c02db1-b5ae-dc9f-a3ac-aba2e1df9b01@gmail.com>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:A/P7X1WYb2VH4hlRRQ+B/QGEMyAUj2Fsk95Z6Hxtob6a6l1whxH
 xYcefP4OswlgQkkm2rS2/jqMZcriV4m4GLnIDmoGlWK19AX7af6wsjMub57go+5hw9+k5SI
 J7LTsk6h+3viIhV6tZi8dlkMRlcoieFAECpbPEb8pPyWMX5VYliLJ8yEK3KfAbbjNaG2AAX
 ElzbBbJqfMxrAmNpuXoXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XqR/xzp4p/Q=:280rQTnBbab5dd+tZMpQMg
 O5opgUgiG2VgZbP19s3CDbshHh+Zy1tEumEr18o5wYHEBvEczmpUxNWhk05SmOaofSEbVKWoR
 G4fZEh+ydFT1n+8CdgDHpHnw4uAynL7lT4y5+n4z6u/yr7ZTK2bENQcPM9nz6EIlOYpsofGQb
 U5pVl5S0WhYhowAx2C6UIfhvB2HKueJBSCi3ojY83AIF/TXKKKAMQ5KPPIgs3LyejzkbNeiPK
 Gue/dWLMsHUa4uo6ZnZB9cH0xeXOnskl6Jb+hhrjgAiFdaAgLgKM08YJmL01l06kQkv7g7VoQ
 ei8Gen7JRP+tUf/Wo5oxVV1BmxBqZOCMXh7qtqtikzDmXCZeRR5nBMpMuniN/FJ7p4y1sexz5
 KXCEREES2nlOGfvvWcrhqLJdQHDiyYCCb74Qp5lhWpzy8UljrPwCxWbnPSyYN2cUszAQt0hQO
 Q3Fp25IInEV5a9cjqdDirSSAtrGyITSPNHK9MFQFvccOttBlQvOvMAvEqAr+64c6C+RUnSQ1c
 81Ih9HX7l+p7Nckm9BUW6habgEZ+i8DQW54UCfkYljSuoAa37jfSSUzzZBZDhVzyG0OJ6Tzp6
 OiwjpfsmdY3jptU47LBK3UZoEjJ4zLNeDzwVlsaZIQJJLc/YXTeoAM3rO6hn4ytJXBgwqbn/9
 bBgFuM4IdXgVtdv+DiBuD6K+4G09xVN/NzUfyXZFyJtGHhTBbqns8X1P01naYrIPGHvpgBp3E
 CrkHtAVdZxP+0J1zAKRWadC+I3GIH2PGAy/5vTmxkKq5Lrxe1zP8u6WVQrNs64aXBZ1a/sWcJ
 7piKv2pfo0LYvL5CZoGvHPhHHOJPbo4ZCQlkhlZYwzkL7TdIp8XD1kdT/T0SwnIz2NRRsPEWo
 p/q8USB0qGjP4jeK3H7w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_045343_537317_701969EB 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Content-Type: multipart/mixed; boundary="===============4334226628986568081=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4334226628986568081==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-GT2oEjsGhrVqVosZxWGM"


--=-GT2oEjsGhrVqVosZxWGM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-13 at 13:44 +0100, e9hack wrote:
> Hi,
>=20
> it looks like that uhttpd/luci/rpcd is broken again. After login in
> the web interface, the main status page times out and shows this
> error message:
>=20
> RPCError: RPC call to luci.ddns/get_services_status failed with error
> -32000: Object not found=20
>   at handleCallReply (
> https://wlan-dsl8.lan/luci-static/resources/rpc.js?v=3Dgit-19.317.29469-8=
da8f38:12:3
> )

Seems to be a file permission issue, try:

chmod +x /usr/libexec/rpcd/luci.ddns
/etc/init.d/rpcd restart
=20

>=20
> Regards,
> Hartmut
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
>=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20

--=-GT2oEjsGhrVqVosZxWGM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl3L/MwACgkQnXHNVHv6
5oR0+RAAs5eoB/0/gZkSBECDwcdtAGoETChpQwKkszQU8+LZaQoOnX1fj8va2Fh3
jFxEVJGdR6sFohFV8fyDSwmi13Duz12Q1kP/dTm6WmKH0Kd0yA94BXrTH/6SB7t8
z/G1rcQYM7NGvr1lGPQvnU6XuSDRO9s7FH1k+X82/wa9sRKA0VvILbH0CSUTKiNG
WM2OHUe7ovBVz0gE1ERzQ8VTMC9gs1lRn5jOQe4PJBrNOgzpekq1t88HUSCQJOYF
doX6rTDyOmGPABCkp2q+rQq7PSprPNCCSoXgUanvk68wa9Wd0HE9xmv6CyhHwIL8
LJJnosE364kqg8bybk6h3KIsuzwxCNnYUfNsUl5/LGify0YBwmgaoyQo5HZobrBA
6D32J+qLriOBHp/I0pG65wu3bWwmxclcJTlue20WstlXzCtcUJvV49k9PvpvbQ/z
BOW0SVo5ci3jrsRXTQZw13Ou+qyg0Cq0pB9iD3cu9yA9IiDvoMhAHwiISO7ikg/X
4EPsuyyvE0A0WJ93oBV9+Ny3pAWOmTL+SUq854TLQrMYkeLfKaO7rRSAzb45n+ID
yDgakGpMS8R3BEs+rzheqBiTAa+tEHgDVPNr+jsDF4DsNq2oMFihRklkHoA8oKQs
rEQ0AJb5lFEu31vbwK5TaiyawvHcbgzesZz8KyUqJjHGZc6MIfY=
=K2/4
-----END PGP SIGNATURE-----

--=-GT2oEjsGhrVqVosZxWGM--



--===============4334226628986568081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4334226628986568081==--


