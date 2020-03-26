Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A395194484
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 17:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tCH9dfdVQq06Pzj1LSZDwKuCwHjojzzqKHjUZVVNKxw=; b=CLUJsSLQd3TlBSP6Ko0uae3jP
	anJLPxHbx4s4Clrw6HMN9KZTUw+/nr7GvMCIL50I7AZBoCVd2UjrKYADNJ9lJ6jt0M6FnxEcJcdzA
	wBdGsDd7vs3AlhNYgQHlbbYEspr/3YMDEYR+r6oWGal/fa99UqjRzowkK9wrcQw+ZZyES/vi4DlPE
	0h/FUWFgr20xXAUlqhxEkI6y9GbSk8AuCTYMcHZyW1EIgzCd/tm+xZR9zLB1F+/R/uXVxJpiYm0J8
	whl96q9vw3oZ0WH1r5zpDQSUbXAm6w928k6XDsx1jf+0OUUpGLaAWGFDwGv1odbrHwkhZTDio2U1V
	hzxNq2eZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVav-0005rj-IS; Thu, 26 Mar 2020 16:43:01 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVan-0005qz-LM
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 16:42:55 +0000
Received: from desktop ([188.192.136.247]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mk0FS-1jfawe3FQu-00kRio; Thu, 26 Mar 2020 17:42:44 +0100
From: <mail@adrianschmutzler.de>
To: "'Henrique de Moraes Holschuh'" <henrique@nic.br>,
 <openwrt-devel@lists.openwrt.org>
References: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
 <4bc61534-4f27-d0a4-6b7a-ef9f377e4b17@nic.br>
In-Reply-To: <4bc61534-4f27-d0a4-6b7a-ef9f377e4b17@nic.br>
Date: Thu, 26 Mar 2020 17:42:44 +0100
Message-ID: <016b01d6038d$9325ac00$b9710400$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQK/rfiRr4ToKQV3kF/rs/GiBlfY3AHKgj+tpnlqIpA=
X-Provags-ID: V03:K1:0OvZJsRAYg993aldwBiVmVRXlkkefBSyREw0HEIT/khind8Zkp6
 TblREXwCYQv3Sd3BQACsrnXXXANJi7WImfzWFO3FmQvUyki4wi/Du6R+vREGhMyO6mBpkJ9
 j/kyKetU4o9BKzlsrWG8/ZZviJxqTYRl8a0iWnE0jjE28YMuBq2BottOR6b4xuDiphS6CpY
 t8By5cRIgmQJMOL6ojhvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+ImCfoACgQM=:sKgdn6Koq8KOe+a6lrom3C
 UyVVbvLmsfR/wip9fx9wEFtjKlCMvyrFOUiW9zOOSD3hnnyIeV5MyR5+4wPaBUuUtnS+xoey8
 hmyHD5hn14u5S3FIItiFbRHvQLCWckTglxdGjeRTRbK2MZLgHkrCOrUQN0t63Zdv4QVUQB9hf
 h2WNkzfhvZ9uUMSKr7A1e/HOtdr65ApQxYKro7vsguIi+p7oakzSNciNWeCWn7vL5HCBt/e2U
 fDRrqovumrF1hPbu8DsxPN6OGUkktIPWiLpPvLtOEMyKNRaRND17frkLIneeyL0zU6OZU6wFm
 HjnyRaOQ4H66jERLolVTIoOh3fMSqJ9t+pwKrCXlTy1YBFyR/6Do4MWvq1IpUZyF6BtPpJfnC
 PcmYDU43xfgerZpxTV3f/R0bzOngTw1Y58t8ZRp4QYC0t4PR0ajxre8FdjBTY5AwE4nd7S41Z
 XrMNH5eG5pYJ7l/RLkEDLhLXxBjRcx7yoi0tel+DA+X+9vddPsYB5aDtNRFUUH9Eujily3a1I
 0yaBP/q7WVahfGrVS8mCbR/ny7/5oyKnBP2kfSSIfaEckOMXmuu3Z6Y42xyzdkwrAnu6m5ztk
 5u4bdY9xoy5R5nZ2gTzijDw7L8emvdK9Syar62v3EIZfTBX7PS9um3ow6go/7gsHORT5BJm6Y
 02m1TnUBKK6DucCGIhKXcMHT1ctmJi1Yj7eYGz6Wd1QvFaPW84IO9KfkuN2lKXraeKvHzRtkf
 Wi7OuyzGjUxGgq4UYiu4gm/KeCqOcvDjfwBd5NNcMQnV+XAQIygA63HOggGXPUExR7iZ6KK6w
 544OY0P+MJ0kH/bhXZwYSvT5TfduhhGfkI9oq2n83nvvoh47A998TcPYVQtIxHwqdqKytW/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_094253_995306_D44C5794 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory
 image
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
Content-Type: multipart/mixed; boundary="===============7629757492915826138=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7629757492915826138==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ITc13+3Oy7yGMm=-="

This is a multipart message in MIME format.

--=-=ITc13+3Oy7yGMm=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > tftp.bin - can _not_ be used from vendor OS, but can be used via TFTP
>=20
> The name "tftp-recovery" (maybe "tftp_recovery") has already seen some
> use on images built for the purposes of being used for TFTP, maybe it wou=
ld
> be better to keep that naming?

It looks like tftp.bin is used for ath79 and tftp-recovery.bin is used for =
ramips, while the latter are a few more (see grep below).

I'd definitely have that unified, though I have a weak tendency towards the=
 shorter version (tftp.bin). Maybe somebody else has a taste on this?

Best

Adrian

---

adsc@buildfff:/data/openwrt$ grep -rn "tftp.*\.bin" target/linux/ | sort
target/linux/ar71xx/image/legacy.mk:345:                ) > $(call imgname,=
$(1),$(2))-tftp.bin; \
target/linux/ar71xx/image/legacy.mk:375:                ) > $(call imgname,=
$(1),$(2))-tftp.bin; \
target/linux/ath79/image/generic.mk:1190:  IMAGES +=3D tftp.bin
target/linux/ath79/image/generic.mk:1191:  IMAGE/tftp.bin :=3D $$(IMAGE/sys=
upgrade.bin) | yuncore-tftp-header-16m
target/linux/ath79/image/generic.mk:1201:  IMAGES +=3D tftp.bin
target/linux/ath79/image/generic.mk:1202:  IMAGE/tftp.bin :=3D $$(IMAGE/sys=
upgrade.bin) | yuncore-tftp-header-16m
target/linux/ath79/image/generic.mk:1212:  IMAGES +=3D tftp.bin
target/linux/ath79/image/generic.mk:1213:  IMAGE/tftp.bin :=3D $$(IMAGE/sys=
upgrade.bin) | yuncore-tftp-header-16m
target/linux/ath79/image/generic.mk:201:  IMAGES +=3D factory.bin tftp.bin
target/linux/ath79/image/generic.mk:206:  IMAGE/tftp.bin :=3D $$(IMAGE/defa=
ult) | buffalo-tftp-header
target/linux/ath79/image/generic.mk:224:  IMAGES +=3D factory.bin tftp.bin
target/linux/ath79/image/generic.mk:229:  IMAGE/tftp.bin :=3D $$(IMAGE/defa=
ult) | buffalo-tftp-header
target/linux/ath79/image/generic.mk:243:  IMAGES +=3D factory.bin tftp.bin
target/linux/ath79/image/generic.mk:248:  IMAGE/tftp.bin :=3D $$(IMAGE/defa=
ult) | buffalo-tftp-header
target/linux/ath79/image/generic.mk:259:  IMAGES +=3D factory.bin tftp.bin
target/linux/ath79/image/generic.mk:264:  IMAGE/tftp.bin :=3D $$(IMAGE/defa=
ult) | buffalo-tftp-header
target/linux/ath79/image/tiny.mk:13:  IMAGE/tftp.bin :=3D $$(IMAGE/default)=
 | buffalo-tftp-header
target/linux/ath79/image/tiny.mk:8:  IMAGES +=3D factory.bin tftp.bin
target/linux/layerscape/README:109:  =3D> tftp a0000000 <firmware_name>-fir=
mware.bin
target/linux/layerscape/README:123:  =3D> tftp a0000000 <firmware_name>-fir=
mware.bin
target/linux/layerscape/README:142:  =3D> tftp 96000000 <firmware_name>-fir=
mware.bin
target/linux/layerscape/README:78:  =3D> tftp a0000000 <firmware_name>-firm=
ware.bin
target/linux/layerscape/README:89:  =3D> tftp a0000000 <firmware_name>-firm=
ware.bin
target/linux/layerscape/README:99:  =3D> tftp a0000000 <firmware_name>-firm=
ware.bin
target/linux/ramips/image/mt76x8.mk:258:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:259:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:287:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:288:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:338:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:339:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:353:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:354:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:366:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:367:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:379:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:380:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:392:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:393:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:420:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:421:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:434:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:435:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 64k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:449:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:450:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/mt76x8.mk:465:  IMAGES :=3D sysupgrade.bin tftp-r=
ecovery.bin
target/linux/ramips/image/mt76x8.mk:466:  IMAGE/tftp-recovery.bin :=3D pad-=
extra 128k | $$(IMAGE/factory.bin)
target/linux/ramips/image/rt305x.mk:303:  IMAGES +=3D tftp.bin
target/linux/ramips/image/rt305x.mk:304:  IMAGE/tftp.bin :=3D $$(sysupgrade=
_bin) | check-size | \


--=-=ITc13+3Oy7yGMm=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5824AACgkQoNyKO7qx
AnAQUA/+IZ0csUJZbm1+vYQ2bYxWTu11fYempTAEfjdZgrUzAdEdlkO/tMy4pktm
ndhDF/crUc4ex2aTTTZO1t1U7hp38XGdzVy1pIqzIVvySJEkPu4hyeS5i9CyuYoy
T4JJKMzLPv73qO5Etm7kQqlYBoq4YhMutH5F254mNBcCdCOTdylZiOx98NlBIETM
0sUfksnEjnNAaX/cl7/UZCNh1v8Vj+AdlAeHR+5pZZh3GfmHQ+Wy+PK0Hz3VfE2Q
ZVEN9wl33gWOGxPXIOfetSjCW2u205TIhHOs5wOEqndgdCX5zVv3lJcpFd+YShkh
hXkrazYvyszTO/xlG0z3SocFS/re896FDzNu+fqDqxVzEmnQ1bIIgi5c442F4e5f
u4fGbUnK7VzSSnEpcve5UiYHgvgnA3PLkjHFDHEBX8SNqWtne3vU59HHgnWeEBvO
m+6piqaHfFHpqdMZ3TZ/OjDiz/zvdZN/Ggu1d0e6h+MxPpzUWyRIvCUDQ7KFEHym
xKPfQgsbdGoZeCluIhc5CjKvwY+3sgwvoLHj4z/Ax+g2wlOpjF+bal2EjgZHgyPv
/2gkinWMdXNrvcZ6Bo7Rx+BJNmYcXb1J0dSSdPbwnEcM99iGqoGIFjlSeYjwEmeo
qmJvCC61gZsXlyv26/IDOVOxfTdYATDy3qilyljGPA8c40JoTsc=
=uQKN
-----END PGP SIGNATURE-----


--=-=ITc13+3Oy7yGMm=-=--



--===============7629757492915826138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7629757492915826138==--


