Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C770BEE3F5
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 16:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=36xMlTeepajAWlba25tnsZrr5/DqTDP3svFEsmjHQqY=; b=Vfr2J4AmmdZFy3jknTStRwOOv
	Pk9uJqS5Qk7OlMgM/I9eByoAtK4FBmRZgqP6xkAY5cUQCuNbUTPdnYUy0CKAvVDU9X40AClv4PskZ
	xe3PIsosr0qWDfVBicYcDyzKt5ozhwIIDSkJtoSxjd83pX4YDLFYT5pz2N6wHPMSEqCRrSpdTaOZH
	AyULdaHcLujO/iaG7ioYpS6KoOPidnCz9GRTnVoyqGONvmMjTG9hYVKOSc+Kxc4MTzTXBy/BSLjyY
	xqiHE1S5ljeDYVkccBt/odp3FanrUIHl5wOWPIP21nn0DL9k1zsm4BJoQB784ZFdJmMfJf2ejcN1i
	H2HlVZH6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReOw-0007Ef-Bu; Mon, 04 Nov 2019 15:36:18 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReOm-0007C3-IB
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 15:36:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfZDK-1hzDTQ3Oga-00fwxq; Mon, 04
 Nov 2019 16:36:04 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>
References: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
 <CAKfDRXiaLznBL2xovCvtX_iV2c4qhdJr8gU5rpEs4j=bdFBerw@mail.gmail.com>
In-Reply-To: <CAKfDRXiaLznBL2xovCvtX_iV2c4qhdJr8gU5rpEs4j=bdFBerw@mail.gmail.com>
Date: Mon, 4 Nov 2019 16:36:04 +0100
Message-ID: <022601d59325$91e93330$b5bb9990$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFgpTNeNgPhCoMf8msRHoIqJLGzDQFaqX3mqFogKAA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:OCSKmX+1j/uIDe5yw5kVso9EiJSGGJ3X7ZK0IhIhk40rN/IbN8J
 ooDjnRxnXYyHtSnNpkU1wGlUHoQFvClHVeVzH2q/3CPF+8vQObAIrx10tb6YFYongzPEjGj
 U/k9vCzEBMH/Rso6cIm8PkdTEs6AY3qEQN9zqEj/2dz9K4E5yo4lfhmFY1rKXEyhdFSfHnp
 3ak6PH9ISDigwdwhe4xKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4sr8STrLNN8=:clCRILhOrcml6Ua2OkJ3sx
 09dcaVdtMQ7qhlTIwFKNblC80nup1fwBwBWUO3qxbNWRk6p2R7Gx4KxURqJIerzvCBIW36YJR
 Pf2McQBCLlzx7xHnuK6otgkPyCucqai/OKxWVYKMxNVAHZFSDxj5FL6gRoKKfDC/3wa/sYYyQ
 hNRpyo4Cq31R0k1Bee5wWASJULxceuTXfYe7NF8EFoGKAEXJxs1BtHpJtb19ZU9/GP0bXGY4V
 ARKH0c5VIz81GG9RdkWGr9Io08NRExf8FAF7+VciCJyMGUvgaaxRClSPfLLsJixgMK2HRdlJ/
 FLPTDoKLAUJjZmcn5OhThfs9yDFPgByvnLlTFaH7MNXl+Va6QmoFB6nbxxaD+8EN907BFP4G3
 K4IQe9LjM0wzedFQW6y+wPwwFyUu9QFfI7XtaTT0wWzjn125N2N57YbjurZgTA6xwUmh3RCYI
 PvrIYZVTfVaf3gVrbfWC5yoKXWPygByDFOT7p1eiVa3EfwqbI7/xCei0OT6t2cpURN1XJJWJ4
 2CaBZ6uHCOcHppP4ILfYIVXqvgbrsGXuKgAIlwnT2Xt64uN58uzHfyYk0S2v/SvTfrNfjiqy+
 7MFJ9FFJDHXji/OiuenHmXINFU0c6QitL2npiZeMgE/xQXDNMQsxrcNylhp2H6TrS+o+UBz6M
 nCBT/6y1e+Dq+befZ1ub1+kcXfVVglu/ecjFHwhU9KWMTkRxJRNGzcJuxw626UelGor9NZLfh
 N+sztuuktZLamQnN3IQnp/QKQUsQ8jHacW7EygzD3APxeHoo+OXTzv0Ib1UHMt7fbri+5XPID
 /X2cj/Xt47cW9NAE7slg+xfMdJRj6FKLUbRu5iowPrzyrqKocWXk4oPzKHpRTefVZN2nofCjF
 PQVA8z2p5ZwKjD3+GLXz4ArvjwhoDb3uHGqYe3gSw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_073608_890031_95034046 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: always store label
 MAC address in uci system config
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5307612322563472485=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5307612322563472485==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=v6/wU0d1lcQYGa=-="

This is a multipart message in MIME format.

--=-=v6/wU0d1lcQYGa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Kristian Evensen [mailto:kristian.evensen@gmail.com]
> Sent: Montag, 4. November 2019 14:57
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: always store labe=
l MAC
> address in uci system config
>=20
> Hi Adrian,
>=20
> On Mon, Nov 4, 2019 at 11:44 AM Adrian Schmutzler
> <freifunk@adrianschmutzler.de> wrote:
> >
> > If set, label MAC address is available from one of two sources,
> > device tree or board.json. So far, the function get_mac_label
> > was meant for retrieving the address, while an option in uci
> > system config was specified only for case 2 (board.json).
> >
> > Since this has been perceived as counter-intuitive, this patch
> > changes front-end access to the label MAC address:
> > During first-boot, the label MAC address will be written to uci
> > system config file for both cases, no matter whether is was
> > specified in DT or in board.json (via 02_network). A user of
> > the label MAC address will then read the value from
> > system.@system[0].label_macaddr, which is easier and more intuitive
> > than using a function and still have an uci value set.
> >
> > Since this is only changing the access to the label MAC address, it
> > won't interfere with the addresses stored in the code base so far.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> I am not an authority on anything, but I don't think a "runtime" value
> like the label mac should be stored in a persistent configuration
> file. For example, if someone makes a mistake with the label MAC, you
> would need a uci-default script for fixing up the config. You also
> have the issue of devices that have already been installed, without a
> uci-defaults script they will not have a label mac in UCI.
>=20
> Instead, I would keep board.json as the source for label MAC and have
> get_mac_label parse the JSON-file. I guess you might also have to
> patch the generation of board.json to include the device tree. At
> least I think that board.json is as easy to work with as uci from
> scripts, Luci, etc.

I also thought about that.

However, I'm not aware of a case where board.json is used for anything else=
 than setting up config files, like in a script with user-interaction etc.
So, I hesitate to start with that (as it might also be counter-intuitive fo=
r some people).

Concerning address fixes: There might also be users that don't want the add=
ress to change if it has been wrong for some time and they have implemented=
 that particular address into their system. This might be more relevant for=
 downstream projects than for use cases directly in OpenWrt, but this is ac=
tually a somewhat separate aspect. Despite, having the uci option will allo=
w users to change the address (if it's wrong or for other reasons) or provi=
de it when upstream support is not there (yet). Just having a function read=
ing from DT/board.json would be much less user-friendly there.
However, I do admit that my arguments here are practical, while you are rig=
ht that strictly the label MAC address is a device parameter that should no=
t be altered by the user.

> You also
> have the issue of devices that have already been installed, without a
> uci-defaults script they will not have a label mac in UCI.

That's a valid argument I haven't thought about before, and it eliminates/w=
eakens most of my arguments from the previous paragraph.

So, if I want to bring the label MAC address to users updating to 20.xx/mas=
ter, I'd either have to use board.json in get_mac_label, or add label_macad=
dr for those not having it even though /etc/config/system already exists. O=
ne could still think about providing a label_macaddr option in uci only for=
 _overwriting_ the provided value.

I see, I will have to think about that (again) for some time ...

Thanks for the input

Adrian


>=20
> BR,
> Kristian

--=-=v6/wU0d1lcQYGa=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3ARVcACgkQoNyKO7qx
AnB9JxAAvn6QvorhZfXauKobceJGgm2yyNh+X8SZN+zTjWe2TMiiWx2BLVjyYYZo
g6DLHx1HDmpBZk/1sPzs7mF9ygphyFA8rDaIxkkm4Ax/Z+wB3ZN3QmFVOsiOBfaS
48T+QZcTuWV37l652sEqXRCiVivWLCysQmWIG3XlXDAlJGQyK87RIQAWT6Vd0DfY
ya3Y3pDXDEx7+FPiX7KjTHd5Haq0jWW10RkP2mL1H4VyUdYfDfutkmPe7pt1C1nh
NoWR75LKxpvFFlQh+X+8tK+RGVGs3EFsGyz7yfCYY02skwlotXSbm8pAeZGiUoLG
+taBUOsUeJt2Tc5AVcPmA1clUmteShIbkS5jqMDqfDnmaYbTqXzJP80pFsIkG1Bp
vwXbdlBTBBUD3mQwolnWYwJCdpgyHtELfwVJUbY5x2tk3oejuUTLqbYEmN78Fbqc
FR0EpDsKvijbQgrcK1LpUr2JIfEuirUUnKPfu+E8jL9CsPtyPPLNpLIutOfblc2z
ILfIZOUDZjQFbZvIGNbUZOEcrFKjHGf9rKB4JDq8FRdzmbqbIKucjT9cRo/cN2xv
tMmdBZQHXR2j9VbU1rP/PjKFPKz5ct6vw9HfXWI5TqJQn5AxzMJZDaIO3aQtRhYv
i+WJPqyokxnq15Bon8k1IX8/KtDICRuYV+yIOBW+Jk9pUFPxdA0=
=hA9N
-----END PGP SIGNATURE-----


--=-=v6/wU0d1lcQYGa=-=--



--===============5307612322563472485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5307612322563472485==--


