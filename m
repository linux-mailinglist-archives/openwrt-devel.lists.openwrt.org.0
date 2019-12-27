Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B404E12BAD0
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 21:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vPIeCGrZmV1KoSS6ggKYf7LgqSHNCuz9Dktf3odFV+4=; b=T10Bd939rU5fZn1YXDwL+MTcR
	2x1WNpXRUn8NGCF8RQIuWftsAfKmXqHFPepey9Cb4eGFi977f89KttlQIH35L4aQwSCzCWlOwuWDB
	NReGiDUPBpAeyZGtUP1Y8z0c+nYvjQO5aejY+mGH+IxKh6imReB/JRg6mnmb3puNX6GEG8efCV/i/
	4GRfF0RgHJ2sZiqKxklUnb2VkeRWTsllol8DBYeKe6kt0xsefuboFeONOWhhuGP8/Txzn2AerWqJ4
	eNUVZNTBACPEL2DmRsm10d0MMHBJpXTSBHgt/sIh5yKCsb1sNyTwMng0eJm9rwhz5V+CpgH300X/A
	JFDTn4ubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvmk-0007il-Ic; Fri, 27 Dec 2019 20:00:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvmF-0006HA-0P
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 20:00:04 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mk0BK-1jVEsH2BdQ-00kOoF; Fri, 27 Dec 2019 20:59:57 +0100
From: <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20191226191211.5262-1-foss@volatilesystems.org>
In-Reply-To: <20191226191211.5262-1-foss@volatilesystems.org>
Date: Fri, 27 Dec 2019 20:59:56 +0100
Message-ID: <04e401d5bcf0$36d83690$a488a3b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIktxT83Bckgc9JDp4LoVPpJ4CtUKcwcYnw
X-Provags-ID: V03:K1:J63BfdIK5jw+uFqel8sXRQ0aKjhOBMAZbrukiRO9yIeA6C29ukr
 k+Euvz7eBRqrh6jeJDziNHugbXAE6xDKZjwN8/QUYxKqm9z4nNz/NAi0cWRnjkvdXnInzHg
 SfcZrlh9O1k93ZdWe0i34pct0nkKrR/gpOsHk8wP3QJPoBCZiDxircfFYel5FcbjEZtm5hQ
 My4yTUfk/nz7A+LFzZNLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U7imTond8zw=:szywsPquuwb/lKW9ZGuuDi
 S/d9Q5C93IlCW26BFdv81od9p3Wgxcxzb9tL3bWY9E+sSUz3YT2rLhz4UeAivE/VJxMVS5Cjk
 ruvpnudufKISanwhBndDxO7qT3MCTkjCw8tqHQ5jh+prSN3gmJroiENLmiPxPOH3t0adg4lnU
 XTcBa1HfV4CsMqJhHRIfsHyqphHu26ypRhrIozfncT0oiav2hy/3ahFQA61dZ+xHnnGtQvXTz
 g3Ivq4QiEZ2zLugOoHvfUmhVyHMFbgP71L4sR3+63Q8AbHz8jX4ihSadErF1wCaWQOC2W+OIP
 ZifQEvEd6EuKqJ+yk5npgus8ui2oBvO6XZl9TuaILGdjZs3RrEpDDik46EOwuynbY9FLRikaw
 fK5Q/Qsf+UZn0byz4PkrjU3bXmJwh8UgB/F2kBDCYv/8DPhbQrPe0/+nHbAi5PL1KtMQCADdm
 vUKpyGb/kWrWhu6cru3Z0Z/zYQYSUR56Cn9O61qELywVow+GDlz1fFN38/eSyCS+DlGRMCcmC
 fnpIgx4lBIfPdKrscFziopRhTFr0L7KNxTBCg6SiXBiV9DDV4C26jH1S0KTN3T40YYZGqgMQv
 fLC4YDH7FfwUzqW2O4gA8O6a7cqjqpIc6gMQC9Tp2XBRYctmAt+72Lb4DMw9QsdyLxQGvCAmo
 fXr0pmHRv7oeAeAZP5Mn8qPAeKoTko+BwZle4diLph2zXEXE8cexeOxNO8hilxyQKVO7SHwDe
 OF0iENApnUB25m+p62ZNovSBUhXldQ1hd6LYqzAjKgCDAf10sGCTeCrp0tB3WBW2MapvxcRtt
 kyd3G0Wey0CbL5QYWkTBChaovMfvBJ1gymcnUto6gSNI+wZmaPrU6BPQqpH5Nergfpeh7TOXa
 PkPJ21DlXA3W/omeLrYmVlhIkzdpD1dG6AKA70liE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120003_351773_38AB37C4 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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
Content-Type: multipart/mixed; boundary="===============6596739089944348926=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6596739089944348926==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=0xj9M7L1bptNVy=-="

This is a multipart message in MIME format.

--=-=0xj9M7L1bptNVy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> -define Device/dir-860l-b1
> +define Device/dlink_dir-860l-b1

This would break sysupgrade, as SUPPORTED_DEVICES is derived from device de=
finition name, and thus would change.
So, this shouldn't be applied if someone really plans to do it.

BTW That's a good example of why backporting this selectively is painful in=
deed ;-)

Best

Adrian

>    $(Device/seama)
>    DTS :=3D DIR-860L-B1
>    BLOCKSIZE :=3D 64k
> @@ -120,7 +120,7 @@ define Device/dir-860l-b1
>    DEVICE_TITLE :=3D D-Link DIR-860L B1
>    DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport
> wpad-basic  endef -TARGET_DEVICES +=3D dir-860l-b1
> +TARGET_DEVICES +=3D dlink_dir-860l-b1
>=20
>  define Device/mediatek_ap-mt7621a-v60
>    DTS :=3D AP-MT7621A-V60
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=0xj9M7L1bptNVy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4GYrsACgkQoNyKO7qx
AnCfdxAAqlyBRk+sk53OiWE1Sl/FplAtlQN/yWm7Op29erUHIF3cQwiWOuSqhXHj
T2GWV7Y8qE+2BK5+rMNJdcNp9/HuYx5+q2vQTOdzSVfPgu7AQ+n+iQy0uPn2o3nv
G7Z+3VBrPKb2bnzZlkk17YXBm05yxMqbn46yGo5su8oBaIFlaov99fy7yX+aYMg5
MDmgkGACvVJFr6mltZfdZNiwBCgsaQ0xqn2z+y0Ol5NVfU/snD5cwBNwlysjfUKb
9S2UtDfUXwOe9Tlhb8F8QTSJzzpULKaf1jbh4Amv+a14nBeajTfVTCq+5opAdyEJ
zAaAzg1kAi204VGzbMkNZGZOFoxB0hYAzxoSRWFIU2uifIaOHM6eVa6mGmQ3G1O0
3YCfobvgE8YB30aO3K2eW6sPgEC1MF+feoR4XQGoJyw7eiRDkwS3xZCvkBghiG3N
DEBiG4KhpoA4h0wD3zm9WNDgpzmMZy0fxMYggYYdRDwDxR1vVTWb4HOfU2vm8vEC
cEZPAfGjul+L2V4jeJvC+y5CxJJhbhtbV/DLXN2wPM0xoMQVDIA7Ope58Erqa3fa
1OqwyPN9+I5j+qGK6PEcyZqgeaBEZ8SuKX8dpTyPRFlza4Wx+p0NcvV3U/3wJr/+
D6qL8I4Yyzc1sYvKIFI/1uRon4lbDY4vy/+UgGQPOTfnKw8IhKI=
=F18M
-----END PGP SIGNATURE-----


--=-=0xj9M7L1bptNVy=-=--



--===============6596739089944348926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6596739089944348926==--


