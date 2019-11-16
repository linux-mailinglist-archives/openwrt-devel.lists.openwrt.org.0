Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA14EFF621
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9HJIIe5Nc1XtO9udZeEamScAUmNrvW8ydPUb5LpGhM8=; b=VcxLyY/V0T0Rpdc8lGd1Z4sjO
	u9i7cRG2HasFKzeZBkVyFTB0RUmvdnZbHo8tzG0StNwWeX9U5S75qE5kJ/GcAp4xHOlejz4ejiDKw
	CtAQSoTUTfXQa4uKCIH5WuQ6xWEK8NkmokMTfqBuUyx8yiLRMhQkVNUI3EsUapNNgxJSWv94CH/mb
	5g6I2E7953CDlOIDVKRshS99VbOeJSHCyfJwqecgsO5olB+O6PdfvvWmIHsr5nh+f8ipBCuw4M7wK
	yvm35r6SiKlN/wh0CEk47wV7otcAZ7V+bjwpwthKqjGZhW/5NmHaSHPAuUxSjRrSqPbbBFRqaPWkj
	xB7d1YO5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7cU-0006uU-Ua; Sat, 16 Nov 2019 23:36:46 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7cJ-0006u8-6i
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:36:37 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MC2sH-1iiX8U3z1J-00COuh; Sun, 17 Nov 2019 00:36:32 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
 <e67b9893-6173-de0f-0dc8-e0540adf97c0@gmail.com>
In-Reply-To: <e67b9893-6173-de0f-0dc8-e0540adf97c0@gmail.com>
Date: Sun, 17 Nov 2019 00:36:31 +0100
Message-ID: <009d01d59cd6$ad2d01c0$07870540$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJ/7moRzA3acfD76VFF00lgYMtEagHFTI7qpiulD/A=
X-Provags-ID: V03:K1:SwzwIyV8wJJgOkUJ6yNW3iDEfnNhDG5nXd4mhB8daaI7Qt0dP3p
 LQKquJgJYrkdZcA5X1rHwPOXR4puIoIKZ/NxMuctNk1vLsfh1v8WnMNjdLbJq/UfHhQfl7W
 u46TEkQ5g6bK5SOlakbd3/kIWPzJ3UACeKHDh5n9xMAV4ngH3t7p2W6GvsKB56n/AP9HgEV
 71hpVttZwJTg5cr0P8a1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g1ykSsqlHfo=:de6Ij7Bsp9kvr7T26y0FhT
 oqQkO59GB3p4UmQSO0WR/+P5/VwjYgs5/Uzf8eqcGIMQ6Gn7b1cZuUaPx5JLUEDxAk+BEqGrS
 zh26ke5R+Pcgij9xukt0aasUOq25RsI2JgbtE2aZavzW7ooFtuUceHtj2OG2n9S+EW1iXwitw
 wnP7mILX/senPH1Ko/L7BtKWU91Fs4H+BJs2S5F5NBp8OmoIvFaHVkbC5FQNnGug0Z/rIDBlC
 LWl27Ql4JMkrBPfeahP/igWk2A8jbAFbLMm6HvdeyiRggAng6FJHCBJhyrhXWBVamz+4MPKyi
 F05qAluxG3Eqvl2Ff66e9Tb3/zap3lzMCw76TlQk7PF6aARtGYgLEqkJgoeJdtZPSXSUDgItd
 Zh4ORoHpRrb2zB7PtIXeplLHhwvnCMLCR5OE1VkUekpMp4Q9BL2Bd099WXCkRjSmc2roaTOTY
 LsfE9Fp4F4a+Qn2btEJ9aP4dH7+XxuCT+17WcXuMI7iPPwkqZBNyk7jbqelqxYxUKzdHv8kAD
 kdTRkFV+Kl4q/VhE1vHTiJLwsqRAjbN52u80yOm+f+PujxXXGVf4QT1OSmNqzSgiPkYLPG3cw
 9G5snPk4wHo2hSK8s29HUSBoD1b5Lh5jw59Igm3yWjQZilkrh7CNdR7Wugc9S0Dnh87C2LT1B
 Ik8ATySz0WQCA72dShF6N4MqmwURlYJ02lC6a0NvKNfa1wZkqkql8CLOltSpl+U8Wcv6kjqya
 O78DdFq1YJDvoomKlOzgaDPM4ygL321/I7Kgt/0IkKKjlsBKqFEzCY60K0UUo6DnINv5/3GPG
 woQjF3QsD7g/NsCuXzVrK3XmHjKLWR1s5rDSK9Ck0QsTrx64ajCb3xrOKW/5/9rJE529VyxAf
 VwLvarbKtzRl1EtcnL73sUNzsFC4ln2fMXacSFZdM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_153635_536871_B5CD3772 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup
 by uci system config option
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
Content-Type: multipart/mixed; boundary="===============5682866642000127948=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5682866642000127948==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=PVwKn/YdUN05nZ=-="

This is a multipart message in MIME format.

--=-=PVwKn/YdUN05nZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Piotr Dymacz
> Sent: Samstag, 16. November 2019 16:50
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial set=
up by
> uci system config option
>=20
> Hi Adrian,
>=20
> On 08.11.2019 13:05, Adrian Schmutzler wrote:
> > This provides a uci system config setting that will be set only during
> > initial setup. This can be used by uci-defaults script to determine
> > whether they are run during initial setup or after a sysupgrade.
> >
> > Since the setting is removed again after uci-defaults have been
> > processed, it won't be recognized by the user on the running device,
> > but can be exploited also for downstream setup tasks.
>=20
> This looks for me like a misuse of uci configuration and some kind of
> workaround for a missing feature, maybe in procd/ubus?

Maybe I'm not familiar enough with it, but I currently can't think of a met=
hod indicating a fresh installation with procd/ubus.

>=20
> NAK on this one from me.

Similar to the label MAC hostname/SSID stuff, this was just a nice-to-have =
thing for me. I will mark both patches as rejected.

Best

Adrian

>=20
> --
> Cheers,
> Piotr
>=20
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >   package/base-files/files/bin/config_generate                  | 1 +
> >   .../base-files/files/etc/uci-defaults/90_end-initial-setup    | 4 ++++
> >   2 files changed, 5 insertions(+)
> >   create mode 100644
> > package/base-files/files/etc/uci-defaults/90_end-initial-setup
> >
> > diff --git a/package/base-files/files/bin/config_generate
> > b/package/base-files/files/bin/config_generate
> > index b473eba9e9..273561229a 100755
> > --- a/package/base-files/files/bin/config_generate
> > +++ b/package/base-files/files/bin/config_generate
> > @@ -243,6 +243,7 @@ generate_static_system() {
> >   		set system.@system[-1].ttylogin=3D'0'
> >   		set system.@system[-1].log_size=3D'64'
> >   		set system.@system[-1].urandom_seed=3D'0'
> > +		set system.@system[-1].initial_setup=3D'1'
> >
> >   		delete system.ntp
> >   		set system.ntp=3D'timeserver'
> > diff --git
> > a/package/base-files/files/etc/uci-defaults/90_end-initial-setup
> > b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
> > new file mode 100644
> > index 0000000000..779d858d5f
> > --- /dev/null
> > +++ b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
> > @@ -0,0 +1,4 @@
> > +uci -q delete system.@system[0].initial_setup uci commit system
> > +
> > +exit 0
> >
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=PVwKn/YdUN05nZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Qh/4ACgkQoNyKO7qx
AnC0IA/+I5ekD9JGL/5GwxJtAzZmAkbETG3PpDUOzrQfBIoHp8My0lacOgtI/wxx
dotAxHjr9FfvIe3chXPBnAmCuu+3ZNOMqN8yWd/YqpCN2I3ZDONNHSp9lXxAIVtw
fyCviFz36/f/sM9/g4Sqm3jJX0tZC/S7BtmKy3G+HSmELWGEc4Ih+N4lwe5gDV0+
R7mCVKfhWDNsPZAJtkhPh04S+zyY6oOEYEgfPsNxVj0/KfUITAOGcarMaeVtJFd9
FESuk8sSt6Or6V7nb7QXO/RLaMwp3u4rzERRWDnGGk81Yy8cNZcBR9yqcS3sNlxb
TMUoNnUmuXjhTrNZAtkmOSGAmp1CACbMj0UdTYZcVIwKw4T0KX2JzZzH0HSh5jHg
V1XSYU1dfUObwcI6t8m/50pX4OimFr4ajiAovLx2eST4n3h55bh1DfHlQn1oK9Xs
TYemfuZzHSKfl3YZF7ClWULoyzmRRiEL1rSh19TPSDWhJFC51edh4x9XID0LofAX
nFWnfnF4Y/OccSa4k7YHnsQPf3DH7vDNaR7+VOhHeVASfR8T2cCQwmltryzuqyxG
oqP5L44+PWFUQ2nxjP1FpsDLsm6aIYKqraG3u2Y2CAdjYXGZwEFYIvy9t97/0s/t
Ca1lNp2VE7G+ECeEdHRmNbLzmh0lR4jx6T4Rwj1D0u8iLjC2dD0=
=El+K
-----END PGP SIGNATURE-----


--=-=PVwKn/YdUN05nZ=-=--



--===============5682866642000127948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5682866642000127948==--


