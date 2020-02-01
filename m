Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87DA14F934
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 18:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FSxmy6uq4g6+cmqFTSdXoIJoaQx5Md7o8zBenG776zI=; b=lm4
	AMFqWRCGlMDMU4HnEgG2wfuoE9X5EHttyu1Ojl5VkpYs/rUzRxQeCElGx5RVHHCcG3/93GY0U5F60
	4UXQIWKBoPdHGl8QHKf+qTAo2jAlPwniv/QPl6ra/GJ+25bzT8C2+sqPfKvxi2lhQsCIVjFfbOkZh
	jd7C7oEHYOv5ugG33oiQtWD+NLeX/cGqqSZ0TXR8IErOiGXsdqEAS3s3gxjOdQEqzeMghLx7F+S3J
	gSV1a7nFVM5AhdRuIlpAlK5ySZpct9Rcu2LYvbflBVgfRC07ONAd381ItxfwoWO/F3Pb3ItHWPCxE
	8kcNI+2KJzTadQ5MIFe6E32tJMEAojA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixwuh-0007qX-Vw; Sat, 01 Feb 2020 17:50:35 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixwub-0007pz-ST
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 17:50:31 +0000
Received: from desktop ([188.195.207.249]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MtOSu-1jqJx831rC-00unng for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb
 2020 18:50:24 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Sat, 1 Feb 2020 18:50:24 +0100
Message-ID: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdXZJ5uRLVvPBUWBRKG/TBPE6XIeew==
Content-Language: de
X-Provags-ID: V03:K1:+a74bNT3RKXYbQiBkI2SD2O0r3xZTkUcMZArZBKWq1XRgtLuTs/
 ++wsDkKvVUHFjQ/uvIfmpFBDtJblU5ehdgyFPaXp9n8Lm591ahQk5oR+V0HbkW+98dNzbFx
 5oehH0BN/DPg74QhKiaF0/P8VjhjLvNz1UuqWqOjG7E1ftg9kEV6py+Kozc5xKSMhuZQP13
 udpDG4yWlfB7LNulQLJiQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o+5LnywICXM=:PhSXLsYVVjvz6Gv0vlDH40
 F+d6BQF7UAPtTSOxdU4o/8/N0lnaOqWiKJ/vQBLuJP2xdEk2TjbpqHJeOUaljYCq6YUKqIxoz
 GUf/sKRMN9lsHyVdC93XEPRcTjBoDBygGXyv85wGl2crDMc5otNnoK+Ewpu8MLd4Ik78S52dO
 BW7IeT0GfnHL/EPa/8hEUrOEuPmQNnT0IczG76vydLerEHCHSspQoSsX9Z2bumoU0PS6G70M2
 phza/sRZaw6lBW9LsW1kflool1jBVR3b1H+VdkGzShGySVWvtPBvhXgHE5rThvd8cUpIdyJgQ
 sOCCmDC9YFFvjk+003Uqa+vmzcLYqWtUrKi+rtxuHi4UTs3rJdGdLLGDEvitsruaKiX+ZUaHy
 T+9fXYiGhWPBKIWOA5+3xSr/Vp/scheg1e+Kucqx1LfWCBxLWtKyDY/7WAD9z6xehxSgJHxSg
 5lEEub5JSwqP/CysKsEwMvM7Xvi+heqcco7kRLaZ5Su1tSAowHGaqqRY9z9gEAp49T+XKKli0
 Pu318XSBokZRqlMOPbAKV4Q8TJfBPD4ciIW5UFfpRiNxoHshRCLNQbkaYkSQjQ0rmTNe5ymux
 WbwUnAGHA2aubp6GzItPqwpwXvNG6+jAE0M1Jdu7x1/X/V+SBNCbpnap1/X3YUcXI05g5Np1p
 Ze6Yo+nzlVD1e+QEZD7yLvXcNYvG3c514KV66s+bDl4yaXtqEv0Nc82CZj3N8JZOqXVmFoXzt
 aOsCm3lJnOJK1BuWFdKBXl1fuu/JmxVSfvoqkvV0iemWDtfHomnPXuY8p/KsxRhp5BmcssEdg
 27XcdXDKjtf48+E3qDWRMRgdY5Q4d8QZaNp1lYXyFCbMsDh1MstvWv23ke173bxfdA8perr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_095030_214366_DFD2C96A 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
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
Content-Type: multipart/mixed; boundary="===============7086108664473829928=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7086108664473829928==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=TzLLhQeMsDMzmF=-="

This is a multipart message in MIME format.

--=-=TzLLhQeMsDMzmF=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

in the device support PR for MikroTik RouterBOARD 922UAGS-5HPacD [1] for at=
h79, we have the following in ar71xx mach files [2]:

static struct at803x_platform_data rb922gs_at803x_data =3D {
	.disable_smarteee =3D 1,
};

Is there an ath79 equivalent available and necessary?

Best

Adrian Schmutzler

[1] https://github.com/openwrt/openwrt/pull/2733
[2] https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/file=
s/arch/mips/ath79/mach-rb922.c#L145

--=-=TzLLhQeMsDMzmF=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl41ulwACgkQoNyKO7qx
AnBIdA//RLpNVAvQBy+pHIY8LNCh5PXdk5i3Z1LoAVYj67pS5noEiefeB4iGybTV
eBX9NL0QmB+DHIPZpfEy2aBkLn/Um01ofnCjbKx4PRS0TBZnp4bo+BCI33SF3c/U
TYad11N6fnuKXdlGK2oJy21/q3X6LLsaCmb3Jxa4XP1tvo5eNLNuNuYy20xJorz5
PXBOkSlr3S0yPPzw3lS4AkNl9xI+f58Flx62EJ+h4PZMDyj40o/LBsDvAe9huqu6
j/b4uX/iH6avNjJyJWTzvC8gzt5z/941osnRExGUzVxhLdeHlKBqwAmQntX7FV2h
vZs109OO/529k4XbdFmSyIeHFzKd1371rTblqik9Im7x7iZoU7+zHHIVAIoy5Ax0
RllKTm3aVDiwT7o+OvgYPK4zO5CAGwAoilYG7ZjZAGH781vC87FneKTeE9/F/0W6
bYsRSIgJEMVfhzBsOr9e0w6CYpKMXsNa2AbbDJRDJ+zQdOZYgufKnzZJEw96V106
05YQAdXA2XdxfQFhv2tENb53MCH4Qdlx1pOR4U65+O6PtGx9SJczINjA9T11rmRb
UdKPXGSLzwcM1DlejT3XSuj+y3CJy1q2Pt+trYnPEu86MO/OWUDW5mpcnELNKKOz
qlRj1Su8HwiG3gEQw1TGmeVG5/9dP5wjF28VN4TRRHbafff1Uas=
=ERj5
-----END PGP SIGNATURE-----


--=-=TzLLhQeMsDMzmF=-=--



--===============7086108664473829928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7086108664473829928==--


