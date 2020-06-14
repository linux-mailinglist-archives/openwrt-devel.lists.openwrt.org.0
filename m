Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D151F8B25
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 00:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jn/n2apv9Rnv7Je3sHthr6pjUkRtJ0AO3U+RFS0GZQI=; b=GvMOmqPN5yNoiPVHjmBpJGTr8
	v7gfxT8FK6GnxycNxAcAaZchGS20DKIXj73gWtpjm0337tQPStdDSS5LgwldH0BBnPDdpS+GtjPxP
	K3nz0sOBcfkb7T0ELSy5LYTsPRK2rNdnZnibBQErXvCtmNrcME6jIvXqIdCqMGBoGotsHYzba6aal
	0YyzziY7H/WqrXLvIQGqz1mbGaw6nB+1bIUoqmZAoVL9H0sIZiBJNEP6dWNl7VJYRRE0YjGtrf8R7
	BGrz7F4ciSebg471alqGNcQyOehn6Rr6jzpwNbDrqvbGumAf4IOg82uOMZtJ6J68+6yANYz9EgZEd
	XfokHTO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkbAj-0006Zn-C9; Sun, 14 Jun 2020 22:32:13 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkbAY-0006Yv-Bi
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 22:32:04 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MzQTm-1iy9NO1wGG-00vQli; Mon, 15 Jun 2020 00:31:58 +0200
From: <mail@adrianschmutzler.de>
To: "'Paul Spooren'" <mail@aparcar.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20200614093330.17516-1-mail@aparcar.org>
 <002a01d64286$7fc90660$7f5b1320$@adrianschmutzler.de>
 <f718a261-fc80-5e5e-0ed2-081396f529a1@aparcar.org>
In-Reply-To: <f718a261-fc80-5e5e-0ed2-081396f529a1@aparcar.org>
Date: Mon, 15 Jun 2020 00:31:57 +0200
Message-ID: <005001d6429b$9d8f8100$d8ae8300$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQK6LKEy9IobiLOQxW20GP4lZrk22gI9aLJrAZjvqY2m8ic8kA==
Content-Language: de
X-Provags-ID: V03:K1:7JQnBp0FMNY7AoWilOc9tfREgzD32HnrxR55DolboTO5PUh3h2F
 Su0T1RBule1yit2zxAyYsrJBNf89ZhS8N+WWlv76RC+Cgoac7955RxrxLAd6WMipkY09F9N
 NrQxrw9kg0wlrXEQqhbcaozzRnb9bO5YpJuhoEfTSo0J0ENVQ5X9lhbYZcOLql76A+UXa4R
 BX9iS03OcGXXv6tdFKryw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YELOTuPjngI=:GGf0xAZovOtdeTA50ak/lR
 AgbAMIkEPOj737NK/YYROIa4PRkwoCvlNjrNgTpbjJGsm7hlyQSZxEgoRjWXTd4ato41ninep
 oxQnNWHYv32CGjOIpMUlNt8d1PMeV0mIADZUsVHpcZhBSG39keRIzXdi0iCbx4yfX2GS3xmVU
 FmAL6bxXw70Rpr0bruHXon2D44Q9/h8KymJm8Z9JmAf/xedkF+XtF4fMO0ZOg9T5Nz55oQ0r0
 FqL+rsWqz7bEWBMipR8UWYYq/cxCb3t8/qYsksQk0dXlOG+i2yGunZWTeer+mbaS26rg1dXKg
 kHLKdmnTYKyVUMkqGCqtYnQMPf2k1xVkJACFtZpp8ee45Gv/qK/L4JP31Ug4ud3n/Z4ObAKba
 XUMIj6uRsr/5YGgyM1KTdFAT6ufIwq3vWNKC2StwYbo+aXw6q5T797ooePDEoTrysiGhBybw/
 GS4uJs4eH4sXXbVL5XchhXJ4rvFVVe9F43SMkWAloqxf2HuJnewC3odKbQQYkYJKZ+Atv/e0V
 E9CxYC1OBJq2h+RtBxQJuvsISqpPGcawoKCWr+VYNdS9DrqgamcvDFDS1YxhZa1CDy7hUgxAS
 iM4guZPTyTdIebykI8cLX9xG/ujy1dquxI9E9TN6QUKVoHNYSyzf3GermLNB/5yiZDbfb1yDh
 wPSRQfG3bguLxCsJsStpeLI+3+ibLqYXVguu4lmWmCTqx84h8muhOZZ1BSpccav4lll7+XSxQ
 S0vtBChdr3Lh9VBYPX2sEYvZC5AmLqVwWFqMh+wEkOJRwZuJ7lVcSvEhylJe9HivLyrC/WfAN
 fP+yGAFziUNl2N2F0gd3mJ9tetsgqeTqfUl9WOSHSCXK5w/UPAlSKBtFv3aEZtrDcS/Goi0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_153202_696652_2A63D676 
X-CRM114-Status: GOOD (  36.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
 image filename
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
Content-Type: multipart/mixed; boundary="===============9076360871956257096=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9076360871956257096==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=gQ71GM+H4zNQ+C=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=gQ71GM+H4zNQ+C=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Spooren
> Sent: Sonntag, 14. Juni 2020 22:22
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
> image filename
>=20
> Hi,
>=20
> On 6/14/20 10:00 AM, mail@adrianschmutzler.de wrote:
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Paul Spooren
> >> Sent: Sonntag, 14. Juni 2020 11:34
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
> >> image filename
> >>
> >> The target/subtarget information in image filenames is barely of any
> >> use for developers or end users.
> >>
> >> A developer reads the profile name and the target is either obvious
> >> due to previous work or `cd targets/ && grep -r <profile>` tells the
> >> target within 3ms. If no buildroot is available `cat <image> | tail
> >> -c 200` allows a look at the attached metadata which includes the
> target/subtarget.
> >>
> >> For users the information is entirely useless and maybe even harmful.
> >> Target names like `cortexa9` could easily be mistaken as an actual
> >> device name while the only relevant information would be
> `linksys_wrt3200acm`.
> >> Images are more realistically downloaded via a Wiki entry or a
> >> firmware wizard.
> >>
> >> This commit therefore adds the new image option called
> >> CONFIG_TARGET_FILENAMES to make the target/subtarget filename part
> >> optional. It is disabled by default.
> >>
> >> As the profile name `generic` appears multiple times in the x86
> >> target as well as in oceton and ath25, the proposed patch on GitHub
> >> should be merged
> >> first:
> >> * treewide: use unique profile names #3082
> >> https://github.com/openwrt/openwrt/pull/3082
> >>
> >> Newly produced files would look like the following:
> >> * openwrt-linksys_wrt3200acm-initramfs-kernel.bin
> >> * openwrt-linksys_wrt3200acm.manifest
> >> * openwrt-linksys_wrt3200acm-squashfs-factory.img
> >> * openwrt-linksys_wrt3200acm-squashfs-sysupgrade.bin
> > I just think of ar71xx and ath79, where we have the same device but
> different targets. Of course, the name won't be exactly equal, as ath79 w=
ill
> have e.g. tplink_ prefix and ar71xx won't.
> Isn't ar71xx removed from master builds? It's neither at snapshot
> https://downloads.openwrt.org/snapshots/targets/ nor planed to be re-
> added to any upcoming release, is it?

Yes, but it's just an example for a similar situation which might arise in =
the future. Then, we even might not have the current situation with the dif=
ferent device names, but may end up with completely identical names except =
for the target.

> > For bcm63xx, we have two subtargets that build the same devices.
> > If we look at PR#2957, we might have a now bmips target at some point
> that features the same devices as bcm63xx.
> Can you please explain why that's the case? Why do we offer different
> images for the same device? I understand that for ar71xx -> ath79 within a

I don't have any idea why this situation at bcm63xx exists; I just got awar=
e of it at some point. Maybe Noltari or KanjiMonster can help ...

> transfer period but it's never the scope to offer different "flavors"
> long term, is it?
> > This won't necessarily break anything, as images will still be in diffe=
rent
> folders (at least in /bin).
> I would be at least confusing and reverts the "unique profile name" idea.
> > However, we couldn't tell the difference between ar71xx/ath79 or similar
> from the image name (easily) after this change, or whether it's generic or
> smp for bcm63xx. For my personal taste, this drawback is bigger that the =
gain
> we will get from removing the target/subtarget part.
> Again, this sounds like a undesirable state where we not only build but a=
lso
> maintain multiple images for the save device. Wouldn't it be possible to =
add
> the target to all those "legacy images", however remove it wherever a tar=
get
> uses device tree and images.mk aka has long term support?

Well, just look at the situation in 19.07. There we have both ar71xx and at=
h79 for the same devices, and even if we wanted, it would actually be quite=
 hard to really filter out the ath79 devices in ar71xx. I really don't thin=
k removing the target from image names will pay out in the future.

> > So, unless there is overwhelming support, I tend to NAK this.
> :(

A compromise could be found by just removing the subtarget, but keeping the=
 target in file names. This would mostly solve your problem with the generi=
c names (at least there would be less duplicate info), but there would be s=
ignificantly less situations where this was an impediment. Normally, no dup=
licate devices in a target exist, and if they are moved between subtargets,=
 they are actually moved and not copied. The only remaining problem I can t=
hink of at the moment would be the bcm63xx situation, and maybe that one ca=
n be resolved at low cost.

Best

Adrian

> > Best
> Paul
> >
> >> Signed-off-by: Paul Spooren <mail@aparcar.org>
> >> ---
> >> It's been a while since I made a controversial patch[0] so it feels ab=
out
> time.
> >>
> >> [0]: https://github.com/openwrt/openwrt/pull/2107
> >>
> >>   include/image.mk                   | 9 +++++----
> >>   package/base-files/image-config.in | 9 +++++++++
> >>   2 files changed, 14 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/include/image.mk b/include/image.mk index
> >> 984b64fb9c..c6fc467c9e 100644
> >> --- a/include/image.mk
> >> +++ b/include/image.mk
> >> @@ -37,11 +37,12 @@ KDIR=3D$(KERNEL_BUILD_DIR)
> KDIR_TMP=3D$(KDIR)/tmp
> >> DTS_DIR:=3D$(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts
> >>
> >> +IMG_PREFIX_TARGET:=3D$(if
> $(CONFIG_TARGET_FILENAMES),$(BOARD)$(if
> >> +$(SUBTARGET),-$(SUBTARGET))-)
> >>   IMG_PREFIX_EXTRA:=3D$(if $(EXTRA_IMAGE_NAME),$(call
> >> sanitize,$(EXTRA_IMAGE_NAME))-)  IMG_PREFIX_VERNUM:=3D$(if
> >> $(CONFIG_VERSION_FILENAMES),$(call sanitize,$(VERSION_NUMBER))-)
> >> IMG_PREFIX_VERCODE:=3D$(if
> $(CONFIG_VERSION_CODE_FILENAMES),$(call
> >> sanitize,$(VERSION_CODE))-)
> >>
> >> -IMG_PREFIX:=3D$(VERSION_DIST_SANITIZED)-
> >>
> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$
> >> (BOARD)$(if $(SUBTARGET),-$(SUBTARGET))
> >> +IMG_PREFIX:=3D$(VERSION_DIST_SANITIZED)-
> >> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_
> >> +VERCODE)$(IMG_PREFIX_EXTRA)$(IMG_PREFIX_TARGET)
> >>   IMG_ROOTFS:=3D$(IMG_PREFIX)-rootfs
> >>   IMG_COMBINED:=3D$(IMG_PREFIX)-combined
> >>   IMG_PART_SIGNATURE:=3D$(shell echo
> >> $(SOURCE_DATE_EPOCH)$(LINUX_VERMAGIC) | mkhash md5 | cut -b1-8)
> @@
> >> -293,7 +294,7 @@ endef
> >>
> >>   define Image/Manifest
> >>   	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
> >> -		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
> >> $(PROFILE_SANITIZED)).manifest
> >> +		$(BIN_DIR)/$(IMG_PREFIX)$(if
> >> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED)).manifest
> >>   endef
> >>
> >>   define Image/gzip-ext4-padded-squashfs @@ -317,7 +318,7 @@ ifdef
> >> CONFIG_TARGET_ROOTFS_TARGZ
> >>     define Image/Build/targz
> >>   	$(TAR) -cp --numeric-owner --owner=3D0 --group=3D0 --mode=3Da-s --
> >> sort=3Dname \
> >>   		$(if $(SOURCE_DATE_EPOCH),--
> >> mtime=3D"@$(SOURCE_DATE_EPOCH)") \
> >> -		-C $(TARGET_DIR)/ . | gzip -9n >
> >> $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
> >> $(PROFILE_SANITIZED))-rootfs.tar.gz
> >> +		-C $(TARGET_DIR)/ . | gzip -9n >
> >> $(BIN_DIR)/$(IMG_PREFIX)$(if
> >> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED))-rootfs.tar.gz
> >>     endef
> >>   endif
> >>
> >> @@ -385,7 +386,7 @@ define Device/Init
> >>
> >>     IMAGES :=3D
> >>     ARTIFACTS :=3D
> >> -  IMAGE_PREFIX :=3D $(IMG_PREFIX)-$(1)
> >> +  IMAGE_PREFIX :=3D $(IMG_PREFIX)$(1)
> >>     IMAGE_NAME =3D $$(IMAGE_PREFIX)-$$(1)-$$(2)
> >>     IMAGE_SIZE :=3D
> >>     KERNEL_PREFIX =3D $$(IMAGE_PREFIX)
> >> diff --git a/package/base-files/image-config.in
> >> b/package/base-files/image- config.in index 3432db525a..5a70d51a7a
> >> 100644
> >> --- a/package/base-files/image-config.in
> >> +++ b/package/base-files/image-config.in
> >> @@ -264,6 +264,15 @@ if VERSIONOPT
> >>   			Enable this to include the revision identifier or the
> configured
> >>   			version code into the firmware image, SDK- and
> Image Builder
> >> archive
> >>   			file names
> >> +
> >> +	config TARGET_FILENAMES
> >> +		bool
> >> +		prompt "Target and subtarget in filenames"
> >> +		default n
> >> +		help
> >> +			Enable this to include the target (and subtarget) in
> >> +			firmware image, SDK- and Image Builder archive file
> >> names
> >> +
> >>   endif
> >>
> >>
> >> --
> >> 2.20.1
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=gQ71GM+H4zNQ+C=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7mpVkACgkQoNyKO7qx
AnCIrxAAqsLONRHWHJ7DWI3yJ6vMJOjeUoAKayBPwJEwP+3cTfII2ZgkxiQavD5e
mdPsnmO7x3/H8iVcWHdEtkpuCQXgB+RNgjT8vwC+CWuGdutM010wh4J4h1qmH1rt
sxgeJS6DXk1ZASrAfEoj1IrP6IDUmnlqvf7HM4FLWlHA2SjMOPvaJoM9XLnINc6V
H24wOJkU6K3bsja7W7/muo4EyR4KOUNx40S6jGqe6jvXYeqaSS/EiiHDNRM7Z4HY
O2MPxLWyWnEWQsRm5OTzkVk6VwrWf86gdH1xBWLo1xV6Ue4Sblw05gsSVBqG2au2
iB1DUdjh/S1Egn+DoOj/ChuUJdu06nLqlFVPTCInLY3lInyzbH3l9a7z5weOu0xk
nzc7J3OzZXxl28C5k9j+A2SfdmrhWbKcYxxYNWfnb73PXR7Y68j2z62qWTY2ZWv0
Pc+fDINOgpPjzWGeOaNATudpKxRLlwpYIU6D+lC3vGimoGVSkEBYPmrdIh8biwbF
aM/lihfCryKDZ9Bti28OV0p9I58WqeSBHMS2zrdxLTmEPsJ2wOgSutDSlCP2Kxo+
tUsnetiyXIlijKiGQUKM5a+dqpbVs4uysQXNyy/MR8LAlgha2/dJeH96uQwehNCG
TPuiVJJ+32FQcSUXqmTByfpIKvWbUWA+CZ1Xd12/Sf3mjjTMpIU=
=viRw
-----END PGP SIGNATURE-----


--=-=gQ71GM+H4zNQ+C=-=--



--===============9076360871956257096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9076360871956257096==--


