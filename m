Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F206B2F76
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 11:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wz8frhRX2N7Uz3cSJLRbr3zKhDOUagqPgBRzUssnhGE=; b=V5bh7vQt1DaieLqERQEpi9TLT
	advUPoQfmNcH8H1aWj7pxzFy4xDV2HfpLxmzzNZzDr9ZxlKFL7RaJ1Nf6O2NZjHsdb4CYd2tEM83U
	kI/Xlz81GxXzGRitmyicCeQR2AHBXMfwAwAWFeA20J6gUwpn9a1wKpPkd6m0MIL54XDaVapVww4xA
	V/VdZAtSGATbV4/sT9zclPVdFv06WWP4WuqRVwG5+llyubpVNc4pKRYNbyp97JJ/Kcn4Zht3QFFOA
	m3g4DHvBJdQVzgImDtTD+R7l0RRQwGeVuDK3Uqg5LO+WVD3WKgbJCWpk4CCIvbRzWxvLtwXxW2lLR
	mNgWsnTDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9REv-0005Hj-E7; Sun, 15 Sep 2019 09:54:41 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9REU-0005HJ-EO
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 09:54:17 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MHX7f-1hwZBN0GjB-00DZOm; Sun, 15 Sep 2019 11:54:04 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
 <00ca01d5688f$722dbdb0$56893910$@adrianschmutzler.de>
In-Reply-To: <00ca01d5688f$722dbdb0$56893910$@adrianschmutzler.de>
Date: Sun, 15 Sep 2019 11:54:02 +0200
Message-ID: <001601d56bab$825cd800$87168800$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQECTHRMTCLlI68ZA+Iqs4F85izFNQF8ofV5AQp3FVaovoSzAA==
Content-Language: de
X-Provags-ID: V03:K1:ytgofXh4HBJQegKocGePdPkVefk9pPNhmOovqo3hmf/pQbbDfDl
 XyLRFbAC+8y0tFwDwnNME+SvAvLNs/FTT5rb6dDebIV0c4E8uZ6bj9HcTZqvKdI0Eq331Db
 W97Q/qcPn78WaaA/PPDMt/OSYQivZRwmkGQaOoxJtQkEkBqRnEyRChGSV+ZH9yCR61E27MX
 gIOB7q3ZXdpyh5OJpoT3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cCzOlQhbZtc=:xFzYYx1TeGRQBP6VTXVL98
 0zMcRPeumVFmDtYNZ4ZI34szNIX3GakOxRjiJavWR1dH7y3FsDyECtZCTsn2mn2SLnDktSjUC
 fqfEmTdAxs1jf1VmlIw2JssXtUx7dwkLaIWSpBsiq3PYtayA4if+XBgCJtWGikt04ZHuNn6h6
 bI+qRZB4GlhMgw9XOJZsow1QKEJ3EPShAYsnpJ6ji5v3x5YvN82uXS+y6eEQx8E/vveoQuT7H
 GjorGe6C/5MNfDOSnYdshKfbhy9OOrYXcsYoNohYXGKmU/kpbjC/0vJNDss1Pl+iqRhb8nVxW
 hy8wXFUDvuWF9CJA283tC7bVWBQWyGvvy4bSWjBioOPqzCVXZG+csPspjNyH0zdr8sgD0mOuc
 WNdC8bzxnb29x+INGtp5612+ofcQyVNTBXDHzMc4q6BsCAMZUiQ9XitXDL/wGi1sur4FpUShi
 EYFKD8B9dJ2g7NS/H+oeg9hh3xqdm0zVM4hksOZaR2dxeK+ezHBIJZJICpQ2R4050G6JzSO7O
 POgPgNTkV2CxAB5kwTeus/FQKLy1gv6nBnxXU1JUuNZlQ79BiftPvph5IW5T/+l3nfKNg3q5f
 pXb64PH56Oodqev5ZM92uDml5enxb2CID3zTlCltrIbrM8LvgEcSkh+bPQ7ELVeyTByMx165o
 xwCgPrqKu6tuqXsQGJZNLJNOp/7N++xiPlry9+Vk0I+/Dhpr7hF1vWJFiTj2LPshj9cxchPzW
 BlSzHJ7qNEaORHNNsDBojdAnGbG5ojeg2y79cUjP+TaElOuoQ01ZBlYB3TGS6CQmGmup4is7/
 OV8FgLHUP6YolV7ooqwuuJ8+h265TfoSHS0O3aPAzZFfOYT7nkphywDr6pNVMHnOwDR9h0hyj
 dHsglmiiBQ9NiWeNa3/OV5WFAWT1QkWbY6wgKIsGk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_025414_950280_2268BF15 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.13 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <rafal@milecki.pl>,
 'John Crispin' <john@phrozen.org>, 'Jo-Philipp Wich' <jo@mein.io>,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Type: multipart/mixed; boundary="===============3176433434614980994=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3176433434614980994==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=EAmQrEw3y7hi2i=-="

This is a multipart message in MIME format.

--=-=EAmQrEw3y7hi2i=-=
Content-Type: multipart/alternative;
	boundary="=-=29SJy2e9JctPUy=-="


--=-=29SJy2e9JctPUy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

please also backport this to 19.07, since the variables for ath79 are still=
 wrong there.

=20

Despite, maybe have a look at my annotations below, at least one of them mi=
ght require a fix=E2=80=A6

=20

Best

=20

Adrian

=20

From: Adrian Schmutzler [mailto:mail@adrianschmutzler.de]=20
Sent: Mittwoch, 11. September 2019 12:56
To: 'Rafa=C5=82 Mi=C5=82ecki' <zajec5@gmail.com>; openwrt-devel@lists.openw=
rt.org
Cc: 'Rafa=C5=82 Mi=C5=82ecki' <rafal@milecki.pl>; 'Jonas Gorski' <jonas.gor=
ski@gmail.com>; 'Jo-Philipp Wich' <jo@mein.io>; 'John Crispin' <john@phroze=
n.org>
Subject: RE: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use $UPGRADE=
_BACKUP to check for backup

=20

Hi,=20

when looking at the merged patch (unfortunately only then), I found some "i=
ssues" (see below):=20

> -----Original Message-----=20
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Rafal Milecki=20
> Sent: Freitag, 6. September 2019 07:11=20
> To: openwrt-devel@lists.openwrt.org <mailto:openwrt-devel@lists.openwrt.o=
rg> =20
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl <mailto:rafal@milecki.pl> >=
; Jonas Gorski <jonas.gorski@gmail.com <mailto:jonas.gorski@gmail.com> >; J=
o-Philipp Wich <jo@mein.io <mailto:jo@mein.io> >; John Crispin

> <john@phrozen.org <mailto:john@phrozen.org> >=20
> Subject: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use $UPGRADE_B=
ACKUP to check for backup=20
>=20
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl <mailto:rafal@milecki.pl>=
 >=20
>=20
> Now that $UPGRADE_BACKUP is set conditionally there is no need to check=20
> the $UPGRADE_OPT_SAVE_CONFIG anymore. All conditions can be simplified.=20
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl <mailto:rafal@mi=
lecki.pl> >=20
> ---=20
>  package/base-files/files/lib/upgrade/common.sh          | 2 +-=20
>  package/base-files/files/lib/upgrade/do_stage2          | 2 +-=20
>  package/base-files/files/sbin/sysupgrade                | 1 -=20
>  target/linux/ar71xx/base-files/lib/upgrade/dir825.sh    | 2 +-=20
>  target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh  | 2 +-=20
>  target/linux/ar71xx/base-files/lib/upgrade/platform.sh  | 4 ++--=20
>  target/linux/ath25/base-files/lib/upgrade/platform.sh   | 2 +-=20
>  target/linux/ath79/base-files/lib/upgrade/platform.sh   | 4 ++--=20
>  target/linux/imx6/base-files/lib/upgrade/platform.sh    | 2 +-=20
>  target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh | 2 +-=20
>  target/linux/ipq40xx/base-files/lib/upgrade/platform.sh | 2 +-=20
>  target/linux/ixp4xx/base-files/lib/upgrade/platform.sh  | 2 +-=20
>  12 files changed, 13 insertions(+), 14 deletions(-)=20
>=20
> diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/bas=
e-files/files/lib/upgrade/common.sh=20
> index 8e7866f698..0d3162d4fc 100644=20
> --- a/package/base-files/files/lib/upgrade/common.sh=20
> +++ b/package/base-files/files/lib/upgrade/common.sh=20
> @@ -220,7 +220,7 @@ indicate_upgrade() {=20
>  # $(2): (optional) pipe command to extract firmware, e.g. dd bs=3Dn skip=
=3Dm=20
>  default_do_upgrade() {=20
>       sync=20
> -     if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ]; then=20
> +     if [ -n "$UPGRADE_BACKUP" ]; then=20

Any reason why this is "-n" and not "-f" as below?=20

>               get_image "$1" "$2" | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j "$U=
PGRADE_BACKUP" write - "${PART_NAME:-=20
> image}"=20
>       else=20
>               get_image "$1" "$2" | mtd $MTD_ARGS write - "${PART_NAME:-i=
mage}"=20
> diff --git a/package/base-files/files/lib/upgrade/do_stage2 b/package/bas=
e-files/files/lib/upgrade/do_stage2=20
> index 0e6cc1bfc3..0e32445743 100755=20
> --- a/package/base-files/files/lib/upgrade/do_stage2=20
> +++ b/package/base-files/files/lib/upgrade/do_stage2=20
> @@ -11,7 +11,7 @@ else=20
>       default_do_upgrade "$IMAGE"=20
>  fi=20
>=20
> -if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && type 'platform_copy_config' >=
/dev/null 2>/dev/null; then=20
> +if [ -n "$UPGRADE_BACKUP" ] && type 'platform_copy_config' >/dev/null 2>=
/dev/null; then=20

Here I'm not so sure about "-f" vs. "-n" ...=20

>       platform_copy_config=20
>  fi=20
>=20
> diff --git a/package/base-files/files/sbin/sysupgrade b/package/base-file=
s/files/sbin/sysupgrade=20
> index f18143bff4..935d08048e 100755=20
> --- a/package/base-files/files/sbin/sysupgrade=20
> +++ b/package/base-files/files/sbin/sysupgrade=20
> @@ -371,7 +371,6 @@ else=20
>               $backup_attr=20
>               \"command\": $(json_string "$COMMAND"),=20
>               \"options\": {=20
> -                     \"save_config\": $SAVE_CONFIG,=20
>                       \"save_partitions\": $SAVE_PARTITIONS=20
>               }=20
>       }"=20
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh b/targe=
t/linux/ar71xx/base-files/lib/upgrade/dir825.sh

> index c694c2e6f2..e991a06b7a 100644=20
> --- a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh=20
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh=20
> @@ -75,7 +75,7 @@ dir825b_do_upgrade_combined() {=20
>=20
>       if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then=20
>               local append=3D""=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 =
] && append=3D"-j $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>=20
>               sync=20
>               dd if=3D"$fw_file" bs=3D64k skip=3D1 count=3D$fw_blocks 2>/=
dev/null | \=20
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh b/tar=
get/linux/ar71xx/base-files/lib/upgrade/openmesh.sh

> index 8536d4ba4a..f43bdcea7f 100644=20
> --- a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh=20
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh=20
> @@ -159,7 +159,7 @@ platform_do_upgrade_openmesh()=20
>       local cfg_size=3D kernel_size=3D rootfs_size=3D=20
>       local append=3D""=20
>=20
> -     [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && app=
end=3D"-j $UPGRADE_BACKUP"=20
> +     [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>=20
>       cfg_size=3D$(dd if=3D"$img_path" bs=3D2 skip=3D35 count=3D4 2>/dev/=
null)=20
>       kernel_size=3D$(dd if=3D"$img_path" bs=3D2 skip=3D71 count=3D4 2>/d=
ev/null)=20
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh b/tar=
get/linux/ar71xx/base-files/lib/upgrade/platform.sh

> index 726163291d..86e7b6386b 100755=20
> --- a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh=20
> @@ -65,7 +65,7 @@ platform_do_upgrade_combined() {=20
>       then=20
>               local rootfspart=3D$(platform_find_rootfspart "$partitions"=
 "$kernelpart")=20
>               local append=3D""=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 =
] && append=3D"-j $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>=20
>               if [ "$PLATFORM_DO_UPGRADE_COMBINED_SEPARATE_MTD" -ne 1 ]; =
then=20
>                   ( dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_bl=
ocks 2>/dev/null; \=20
> @@ -164,7 +164,7 @@ platform_do_upgrade_compex() {=20
>=20
>       if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then=20
>               local append=3D""=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 =
] && append=3D"-j $UPGRADE_BACKUPs"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUPs"=
=20

Is there a reason for the trailing "s" here or is this a typo: =3D"-j $UPGR=
ADE_BACKUPs" ?=20

>=20
>               sync=20
>               dd if=3D"$fw_file" bs=3D64k skip=3D1 count=3D$fw_blocks 2>/=
dev/null | \=20
> diff --git a/target/linux/ath25/base-files/lib/upgrade/platform.sh b/targ=
et/linux/ath25/base-files/lib/upgrade/platform.sh

> index 0dde103605..778bbf5a39 100644=20
> --- a/target/linux/ath25/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/ath25/base-files/lib/upgrade/platform.sh=20
> @@ -67,7 +67,7 @@ platform_do_upgrade() {=20
>          [ ${erase_size:-0} -gt 0 ];=20
>       then=20
>               local append=3D""=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 =
] && append=3D"-j $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>=20
>               ( dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks=
 2>/dev/null; \=20
>                 dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D$((1+$kern_blocks)) co=
unt=3D$root_blocks 2>/dev/null ) | \=20
> diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/targ=
et/linux/ath79/base-files/lib/upgrade/platform.sh

> index f7e62143e7..f4fca06384 100644=20
> --- a/target/linux/ath79/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh=20
> @@ -14,7 +14,7 @@ redboot_fis_do_upgrade() {=20
>       if [ "$magic" =3D "4349" ]; then=20
>               local kern_length=3D0x$(dd if=3D"$sysup_file" bs=3D2 skip=
=3D1 count=3D4 2>/dev/null)=20
>=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CO=
NFIG" -eq 1 ] && append=3D"-j=20
> $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>               dd if=3D"$sysup_file" bs=3D64k skip=3D1 2>/dev/null | \=20
>                       mtd -r $append -F$kern_part:$kern_length:0x80060000=
,rootfs write - $kern_part:rootfs=20
>=20
> @@ -22,7 +22,7 @@ redboot_fis_do_upgrade() {=20
>               local board_dir=3D$(tar tf $sysup_file | grep -m 1 '^sysupg=
rade-.*/$')=20
>               local kern_length=3D$(tar xf $sysup_file ${board_dir}kernel=
 -O | wc -c)=20
>=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CO=
NFIG" -eq 1 ] && append=3D"-j=20
> $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>               tar xf $sysup_file ${board_dir}kernel ${board_dir}root -O |=
 \=20
>                       mtd -r $append -F$kern_part:$kern_length:0x80060000=
,rootfs write - $kern_part:rootfs=20
>=20
> diff --git a/target/linux/imx6/base-files/lib/upgrade/platform.sh b/targe=
t/linux/imx6/base-files/lib/upgrade/platform.sh

> index 9414b18710..a090cc080b 100755=20
> --- a/target/linux/imx6/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/imx6/base-files/lib/upgrade/platform.sh=20
> @@ -75,7 +75,7 @@ platform_pre_upgrade() {=20
>=20
>       case "$board" in=20
>       apalis*)=20
> -             [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 0 ] && {=20
> +             [ -z "$UPGRADE_BACKUP" ] && {=20

Really "-z" or "! -f"?=20

>                       jffs2reset -y=20
>                       umount /overlay=20
>               }=20
> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh b/ta=
rget/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh

> index e313562017..8e02186eb8 100644=20
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh=20
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh=20
> @@ -74,7 +74,7 @@ platform_do_upgrade_openmesh() {=20
>       #=20
>=20
>       # take care of restoring a saved config=20
> -     [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && restore_backup=3D"${MTD_CON=
FIG_ARGS} -j ${UPGRADE_BACKUP}"=20
> +     [ -n "$UPGRADE_BACKUP" ] && restore_backup=3D"${MTD_CONFIG_ARGS} -j=
 ${UPGRADE_BACKUP}"=20

"-f" here, too?=20

>=20
>       mtd -q erase inactive=20
>       tar xf $tar_file ${board_dir}/root -O | mtd -n -p $kernel_length $r=
estore_backup write - $PART_NAME=20
> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/ta=
rget/linux/ipq40xx/base-files/lib/upgrade/platform.sh

> index 6b9858beb0..c12508c437 100644=20
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh=20
> @@ -37,7 +37,7 @@ zyxel_do_upgrade() {=20
>=20
>       tar Oxf $tar_file ${board_dir}/kernel | mtd write - kernel=20
>=20
> -     if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ]; then=20
> +     if [ -n "$UPGRADE_BACKUP" ]; then=20

"-f" here, too?=20

Sorry for being late with this.=20

Best=20

Adrian=20

>               tar Oxf $tar_file ${board_dir}/root | mtd -j "$UPGRADE_BACK=
UP" write - rootfs=20
>       else=20
>               tar Oxf $tar_file ${board_dir}/root | mtd write - rootfs=20
> diff --git a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh b/tar=
get/linux/ixp4xx/base-files/lib/upgrade/platform.sh

> index 557f43ce6f..f83aa430cf 100644=20
> --- a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh=20
> +++ b/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh=20
> @@ -68,7 +68,7 @@ platform_do_upgrade_combined() {=20
>          [ ${erase_size:-0} -gt 0 ];=20
>       then=20
>               local append=3D""=20
> -             [ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 =
] && append=3D"-j $UPGRADE_BACKUP"=20
> +             [ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"=20
>=20
>               # write the kernel=20
>               dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2=
>/dev/null | \=20
> --=20
> 2.21.0=20
>=20
>=20
> _______________________________________________=20
> openwrt-devel mailing list=20
> openwrt-devel@lists.openwrt.org <mailto:openwrt-devel@lists.openwrt.org> =
=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel=20

--=-=29SJy2e9JctPUy=-=
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta name=3DGenerator content=3D"Microso=
ft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;m=
so-fareast-language:EN-US'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif=
;color:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"=
Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'>please also b=
ackport this to 19.07, since the variables for ath79 are still wrong there.=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-lan=
guage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F4=
97D;mso-fareast-language:EN-US'>Despite, maybe have a look at my annotation=
s below, at least one of them might require a fix=E2=80=A6<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font=
-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fo=
nt-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-l=
anguage:EN-US'>Best<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F4=
97D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sa=
ns-serif;color:#1F497D;mso-fareast-language:EN-US'>Adrian<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-=
family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'><o:p>=
&nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid blue 1.5=
pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:sol=
id #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span l=
ang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Fro=
m:</span></b><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Cali=
bri",sans-serif'> Adrian Schmutzler [mailto:mail@adrianschmutzler.de] <br><=
b>Sent:</b> Mittwoch, 11. September 2019 12:56<br><b>To:</b> 'Rafa=C5=82 Mi=
=C5=82ecki' &lt;zajec5@gmail.com&gt;; openwrt-devel@lists.openwrt.org<br><b=
>Cc:</b> 'Rafa=C5=82 Mi=C5=82ecki' &lt;rafal@milecki.pl&gt;; 'Jonas Gorski'=
 &lt;jonas.gorski@gmail.com&gt;; 'Jo-Philipp Wich' &lt;jo@mein.io&gt;; 'Joh=
n Crispin' &lt;john@phrozen.org&gt;<br><b>Subject:</b> RE: [OpenWrt-Devel] =
[PATCH 3/3] treewide: sysupgrade: use $UPGRADE_BACKUP to check for backup<o=
:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p><span style=3D'font-family:"Calibri",sans-serif'>Hi,</span> <o:p></o:p></=
p><p><span style=3D'font-family:"Calibri",sans-serif'>when looking at the m=
erged patch (unfortunately only then), I found some &quot;issues&quot; (see=
 below):</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans=
-serif'>&gt; -----Original Message-----</span> <br><span style=3D'font-fami=
ly:"Calibri",sans-serif'>&gt; From: openwrt-devel [<a href=3D"mailto:openwr=
t-devel-bounces@lists.openwrt.org">mailto:openwrt-devel-bounces@lists.openw=
rt.org</a>] On Behalf Of Rafal Milecki</span> <br><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt; Sent: Freitag, 6. September 2019 07:11</span> =
<br><span style=3D'font-family:"Calibri",sans-serif'>&gt; To: <a href=3D"ma=
ilto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a></=
span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; Cc: Rafa=C5=
=82 Mi=C5=82ecki &lt;<a href=3D"mailto:rafal@milecki.pl">rafal@milecki.pl</=
a>&gt;; Jonas Gorski &lt;<a href=3D"mailto:jonas.gorski@gmail.com">jonas.go=
rski@gmail.com</a>&gt;; Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mein.io">j=
o@mein.io</a>&gt;; John Crispin</span><o:p></o:p></p><p><span style=3D'font=
-family:"Calibri",sans-serif'>&gt; &lt;<a href=3D"mailto:john@phrozen.org">=
john@phrozen.org</a>&gt;</span> <br><span style=3D'font-family:"Calibri",sa=
ns-serif'>&gt; Subject: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: u=
se $UPGRADE_BACKUP to check for backup</span> <br><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri=
",sans-serif'>&gt; From: Rafa=C5=82 Mi=C5=82ecki &lt;<a href=3D"mailto:rafa=
l@milecki.pl">rafal@milecki.pl</a>&gt;</span> <br><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri=
",sans-serif'>&gt; Now that $UPGRADE_BACKUP is set conditionally there is n=
o need to check</span> <br><span style=3D'font-family:"Calibri",sans-serif'=
>&gt; the $UPGRADE_OPT_SAVE_CONFIG anymore. All conditions can be simplifie=
d.</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span>=
<br><span style=3D'font-family:"Calibri",sans-serif'>&gt; Signed-off-by: Ra=
fa=C5=82 Mi=C5=82ecki &lt;<a href=3D"mailto:rafal@milecki.pl">rafal@milecki=
.pl</a>&gt;</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt=
; ---</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp=
; package/base-files/files/lib/upgrade/common.sh&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; | 2 +-</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt;&nbsp; package/base-files/files/lib/upgrade/do_stag=
e2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 2 +-</span> <br>=
<span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; package/base-fi=
les/files/sbin/sysupgrade&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1 -</span> <br><span style=3D'fo=
nt-family:"Calibri",sans-serif'>&gt;&nbsp; target/linux/ar71xx/base-files/l=
ib/upgrade/dir825.sh&nbsp;&nbsp;&nbsp; | 2 +-</span> <br><span style=3D'fon=
t-family:"Calibri",sans-serif'>&gt;&nbsp; target/linux/ar71xx/base-files/li=
b/upgrade/openmesh.sh&nbsp; | 2 +-</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt;&nbsp; target/linux/ar71xx/base-files/lib/upgrade/p=
latform.sh&nbsp; | 4 ++--</span> <br><span style=3D'font-family:"Calibri",s=
ans-serif'>&gt;&nbsp; target/linux/ath25/base-files/lib/upgrade/platform.sh=
&nbsp;&nbsp; | 2 +-</span> <br><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt;&nbsp; target/linux/ath79/base-files/lib/upgrade/platform.sh&nbsp;=
&nbsp; | 4 ++--</span> <br><span style=3D'font-family:"Calibri",sans-serif'=
>&gt;&nbsp; target/linux/imx6/base-files/lib/upgrade/platform.sh&nbsp;&nbsp=
;&nbsp; | 2 +-</span> <br><span style=3D'font-family:"Calibri",sans-serif'>=
&gt;&nbsp; target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh | 2 +-</=
span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; targe=
t/linux/ipq40xx/base-files/lib/upgrade/platform.sh | 2 +-</span> <br><span =
style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; target/linux/ixp4xx/b=
ase-files/lib/upgrade/platform.sh&nbsp; | 2 +-</span> <br><span style=3D'fo=
nt-family:"Calibri",sans-serif'>&gt;&nbsp; 12 files changed, 13 insertions(=
+), 14 deletions(-)</span> <br><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-serif'>&gt; =
diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/base-=
files/files/lib/upgrade/common.sh</span> <br><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt; index 8e7866f698..0d3162d4fc 100644</span> <br><spa=
n style=3D'font-family:"Calibri",sans-serif'>&gt; --- a/package/base-files/=
files/lib/upgrade/common.sh</span> <br><span style=3D'font-family:"Calibri"=
,sans-serif'>&gt; +++ b/package/base-files/files/lib/upgrade/common.sh</spa=
n> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ -220,7 +220=
,7 @@ indicate_upgrade() {</span> <br><span style=3D'font-family:"Calibri",=
sans-serif'>&gt;&nbsp; # $(2): (optional) pipe command to extract firmware,=
 e.g. dd bs=3Dn skip=3Dm</span> <br><span style=3D'font-family:"Calibri",sa=
ns-serif'>&gt;&nbsp; default_do_upgrade() {</span> <br><span style=3D'font-=
family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; sync</span=
> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&n=
bsp;&nbsp; if [ &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ]; then</span> <=
br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp=
;&nbsp; if [ -n &quot;$UPGRADE_BACKUP&quot; ]; then</span> <o:p></o:p></p><=
p><span style=3D'font-family:"Calibri",sans-serif'>Any reason why this is &=
quot;-n&quot; and not &quot;-f&quot; as below?</span> <o:p></o:p></p><p><sp=
an style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; get_image &quot;$1&quot; =
&quot;$2&quot; | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j &quot;$UPGRADE_BACKUP&qu=
ot; write - &quot;${PART_NAME:-</span> <br><span style=3D'font-family:"Cali=
bri",sans-serif'>&gt; image}&quot;</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; else</span> <br><sp=
an style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; get_image &quot;$1&quot; =
&quot;$2&quot; | mtd $MTD_ARGS write - &quot;${PART_NAME:-image}&quot;</spa=
n> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/p=
ackage/base-files/files/lib/upgrade/do_stage2 b/package/base-files/files/li=
b/upgrade/do_stage2</span> <br><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt; index 0e6cc1bfc3..0e32445743 100755</span> <br><span style=3D'fon=
t-family:"Calibri",sans-serif'>&gt; --- a/package/base-files/files/lib/upgr=
ade/do_stage2</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&=
gt; +++ b/package/base-files/files/lib/upgrade/do_stage2</span> <br><span s=
tyle=3D'font-family:"Calibri",sans-serif'>&gt; @@ -11,7 +11,7 @@ else</span=
> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp; default_do_upgrade &quot;$IMAGE&quot;</span> <br><span styl=
e=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; fi</span> <br><span style=
=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-f=
amily:"Calibri",sans-serif'>&gt; -if [ &quot;$UPGRADE_OPT_SAVE_CONFIG&quot;=
 -eq 1 ] &amp;&amp; type 'platform_copy_config' &gt;/dev/null 2&gt;/dev/nul=
l; then</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +i=
f [ -n &quot;$UPGRADE_BACKUP&quot; ] &amp;&amp; type 'platform_copy_config'=
 &gt;/dev/null 2&gt;/dev/null; then</span> <o:p></o:p></p><p><span style=3D=
'font-family:"Calibri",sans-serif'>Here I'm not so sure about &quot;-f&quot=
; vs. &quot;-n&quot; ...</span> <o:p></o:p></p><p><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; platform_copy_c=
onfig</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp=
; fi</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; </spa=
n><br><span style=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/pa=
ckage/base-files/files/sbin/sysupgrade b/package/base-files/files/sbin/sysu=
pgrade</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; ind=
ex f18143bff4..935d08048e 100755</span> <br><span style=3D'font-family:"Cal=
ibri",sans-serif'>&gt; --- a/package/base-files/files/sbin/sysupgrade</span=
> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +++ b/package/b=
ase-files/files/sbin/sysupgrade</span> <br><span style=3D'font-family:"Cali=
bri",sans-serif'>&gt; @@ -371,7 +371,6 @@ else</span> <br><span style=3D'fo=
nt-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $backup_attr</span> <br><span style=3D'=
font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \&quot;command\&quot;: $(json_string =
&quot;$COMMAND&quot;),</span> <br><span style=3D'font-family:"Calibri",sans=
-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; \&quot;options\&quot;: {</span> <br><span style=3D'font-family:=
"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \&quot;save=
_config\&quot;: $SAVE_CONFIG,</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \&quot;save_p=
artitions\&quot;: $SAVE_PARTITIONS</span> <br><span style=3D'font-family:"C=
alibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; }</span> <br><span style=3D'font-family:"Calibri",s=
ans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }&quot;</span> <br><span sty=
le=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/target/linux/ar71=
xx/base-files/lib/upgrade/dir825.sh b/target/linux/ar71xx/base-files/lib/up=
grade/dir825.sh</span><o:p></o:p></p><p><span style=3D'font-family:"Calibri=
",sans-serif'>&gt; index c694c2e6f2..e991a06b7a 100644</span> <br><span sty=
le=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/ar71xx/base=
-files/lib/upgrade/dir825.sh</span> <br><span style=3D'font-family:"Calibri=
",sans-serif'>&gt; +++ b/target/linux/ar71xx/base-files/lib/upgrade/dir825.=
sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ -75,=
7 +75,7 @@ dir825b_do_upgrade_combined() {</span> <br><span style=3D'font-f=
amily:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Cal=
ibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if [ -n &quot;$fw_mtd=
&quot; ] &amp;&amp;&nbsp; [ ${fw_blocks:-0} -gt 0 ]; then</span> <br><span =
style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local append=3D&quot;&quot;<=
/span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; -&nbsp;&nb=
sp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGR=
ADE_BACKUP&quot; -a &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ] &amp;&amp;=
 append=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span style=3D'font-fam=
ily:"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; ] &amp;&amp; appe=
nd=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span style=3D'font-family:"=
Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",s=
ans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; sync</span> <br><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; dd if=3D&quot;$fw_file&quot; bs=3D64k skip=3D1 count=3D$fw_blocks =
2&gt;/dev/null | \</span> <br><span style=3D'font-family:"Calibri",sans-ser=
if'>&gt; diff --git a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.s=
h b/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh</span><o:p></o:p=
></p><p><span style=3D'font-family:"Calibri",sans-serif'>&gt; index 8536d4b=
a4a..f43bdcea7f 100644</span> <br><span style=3D'font-family:"Calibri",sans=
-serif'>&gt; --- a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh</=
span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +++ b/targe=
t/linux/ar71xx/base-files/lib/upgrade/openmesh.sh</span> <br><span style=3D=
'font-family:"Calibri",sans-serif'>&gt; @@ -159,7 +159,7 @@ platform_do_upg=
rade_openmesh()</span> <br><span style=3D'font-family:"Calibri",sans-serif'=
>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; local cfg_size=3D kernel_size=3D rootf=
s_size=3D</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp; local append=3D&quot;&quot;</span> <br><span=
 style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'=
font-family:"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot=
;$UPGRADE_BACKUP&quot; -a &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ] &amp=
;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span style=3D'fo=
nt-family:"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$=
UPGRADE_BACKUP&quot; ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</=
span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br>=
<span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp; cfg_size=3D$(dd if=3D&quot;$img_path&quot; bs=3D2 skip=3D35 count=
=3D4 2&gt;/dev/null)</span> <br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; kernel_size=3D$(dd if=3D&quot;$im=
g_path&quot; bs=3D2 skip=3D71 count=3D4 2&gt;/dev/null)</span> <br><span st=
yle=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/target/linux/ar7=
1xx/base-files/lib/upgrade/platform.sh b/target/linux/ar71xx/base-files/lib=
/upgrade/platform.sh</span><o:p></o:p></p><p><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt; index 726163291d..86e7b6386b 100755</span> <br><spa=
n style=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/ar71xx=
/base-files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family:"=
Calibri",sans-serif'>&gt; +++ b/target/linux/ar71xx/base-files/lib/upgrade/=
platform.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt=
; @@ -65,7 +65,7 @@ platform_do_upgrade_combined() {</span> <br><span style=
=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; t=
hen</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local r=
ootfspart=3D$(platform_find_rootfspart &quot;$partitions&quot; &quot;$kerne=
lpart&quot;)</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&g=
t;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; local append=3D&quot;&quot;</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; -a &quot;$UPGRADE_OPT_SAVE_C=
ONFIG&quot; -eq 1 ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</spa=
n> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_=
BACKUP&quot; ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <b=
r><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span st=
yle=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if [ &quot;$PLATFORM_DO_UPGRAD=
E_COMBINED_SEPARATE_MTD&quot; -ne 1 ]; then</span> <br><span style=3D'font-=
family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ( dd if=3D&quot;$1&quot=
; bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2&gt;/dev/null; \</span> <br=
><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ -164,7 +164,7 @@ =
platform_do_upgrade_compex() {</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if [ -n &quot;$fw_mtd&quot; ] &am=
p;&amp;&nbsp; [ ${fw_blocks:-0} -gt 0 ]; then</span> <br><span style=3D'fon=
t-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local append=3D&quot;&quot;</span> <br><=
span style=3D'font-family:"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&q=
uot; -a &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ] &amp;&amp; append=3D&q=
uot;-j $UPGRADE_BACKUPs&quot;</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; ] &amp;&amp; append=3D&quot;=
-j $UPGRADE_BACKUPs&quot;</span> <o:p></o:p></p><p><span style=3D'font-fami=
ly:"Calibri",sans-serif'>Is there a reason for the trailing &quot;s&quot; h=
ere or is this a typo: =3D&quot;-j $UPGRADE_BACKUPs&quot; ?</span> <o:p></o=
:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br>=
<span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sync</span> <br><span =
style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dd if=3D&quot;$fw_file&quot;=
 bs=3D64k skip=3D1 count=3D$fw_blocks 2&gt;/dev/null | \</span> <br><span s=
tyle=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/target/linux/at=
h25/base-files/lib/upgrade/platform.sh b/target/linux/ath25/base-files/lib/=
upgrade/platform.sh</span><o:p></o:p></p><p><span style=3D'font-family:"Cal=
ibri",sans-serif'>&gt; index 0dde103605..778bbf5a39 100644</span> <br><span=
 style=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/ath25/b=
ase-files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt; +++ b/target/linux/ath25/base-files/lib/upgrade/pla=
tform.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; @=
@ -67,7 +67,7 @@ platform_do_upgrade() {</span> <br><span style=3D'font-fam=
ily:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; =
[ ${erase_size:-0} -gt 0 ];</span> <br><span style=3D'font-family:"Calibri"=
,sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; then</span> <br><span styl=
e=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local append=3D&quot;&quot;</spa=
n> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_=
BACKUP&quot; -a &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ] &amp;&amp; app=
end=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span style=3D'font-family:=
"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; ] &amp;&amp; append=
=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",san=
s-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; ( dd if=3D&quot;$1&quot; bs=3D$CI_BLKSZ skip=3D1 count=3D$kern=
_blocks 2&gt;/dev/null; \</span> <br><span style=3D'font-family:"Calibri",s=
ans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp; dd if=3D&quot;$1&quot; bs=3D$CI_BLKSZ skip=3D$((1+$ke=
rn_blocks)) count=3D$root_blocks 2&gt;/dev/null ) | \</span> <br><span styl=
e=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/target/linux/ath79=
/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upg=
rade/platform.sh</span><o:p></o:p></p><p><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; index f7e62143e7..f4fca06384 100644</span> <br><span st=
yle=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/ath79/base=
-files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; +++ b/target/linux/ath79/base-files/lib/upgrade/platfo=
rm.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ -=
14,7 +14,7 @@ redboot_fis_do_upgrade() {</span> <br><span style=3D'font-fam=
ily:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if [ &quot;$m=
agic&quot; =3D &quot;4349&quot; ]; then</span> <br><span style=3D'font-fami=
ly:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; local kern_length=3D0x$(dd if=3D&quot;$sysup_f=
ile&quot; bs=3D2 skip=3D1 count=3D4 2&gt;/dev/null)</span> <br><span style=
=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-f=
amily:"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; -a &quot;$UPGRA=
DE_OPT_UPGRADE_OPT_SAVE_CONFIG&quot; -eq 1 ] &amp;&amp; append=3D&quot;-j</=
span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; $UPGRADE_BA=
CKUP&quot;</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;=
 +&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f =
&quot;$UPGRADE_BACKUP&quot; ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&=
quot;</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dd if=
=3D&quot;$sysup_file&quot; bs=3D64k skip=3D1 2&gt;/dev/null | \</span> <br>=
<span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; mtd -r $append -F$kern_part:$kern_length:0x80060000,ro=
otfs write - $kern_part:rootfs</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt; @@ -22,7 +22,7 @@ redboot_fis_do_upgrade() {</span> <br><span st=
yle=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local board_dir=3D$(tar tf $sy=
sup_file | grep -m 1 '^sysupgrade-.*/$')</span> <br><span style=3D'font-fam=
ily:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local kern_length=3D$(tar xf $sysup_file ${bo=
ard_dir}kernel -O | wc -c)</span> <br><span style=3D'font-family:"Calibri",=
sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-serif=
'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 [ -f &quot;$UPGRADE_BACKUP&quot; -a &quot;$UPGRADE_OPT_UPGRADE_OPT_SAVE_CO=
NFIG&quot; -eq 1 ] &amp;&amp; append=3D&quot;-j</span> <br><span style=3D'f=
ont-family:"Calibri",sans-serif'>&gt; $UPGRADE_BACKUP&quot;</span> <br><spa=
n style=3D'font-family:"Calibri",sans-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot=
; ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</span> <br><span sty=
le=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tar xf $sysup_file ${board_dir}=
kernel ${board_dir}root -O | \</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mtd -r $appe=
nd -F$kern_part:$kern_length:0x80060000,rootfs write - $kern_part:rootfs</s=
pan> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><=
span style=3D'font-family:"Calibri",sans-serif'>&gt; diff --git a/target/li=
nux/imx6/base-files/lib/upgrade/platform.sh b/target/linux/imx6/base-files/=
lib/upgrade/platform.sh</span><o:p></o:p></p><p><span style=3D'font-family:=
"Calibri",sans-serif'>&gt; index 9414b18710..a090cc080b 100755</span> <br><=
span style=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/imx=
6/base-files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family:=
"Calibri",sans-serif'>&gt; +++ b/target/linux/imx6/base-files/lib/upgrade/p=
latform.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;=
 @@ -75,7 +75,7 @@ platform_pre_upgrade() {</span> <br><span style=3D'font-=
family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; case &quot;$board&qu=
ot; in</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbs=
p; &nbsp;&nbsp;&nbsp;&nbsp; apalis*)</span> <br><span style=3D'font-family:=
"Calibri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; [ &quot;$UPGRADE_OPT_SAVE_CONFIG&quot; -eq 0 ] &amp;&a=
mp; {</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +&nb=
sp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -z &quot=
;$UPGRADE_BACKUP&quot; ] &amp;&amp; {</span> <o:p></o:p></p><p><span style=
=3D'font-family:"Calibri",sans-serif'>Really &quot;-z&quot; or &quot;! -f&q=
uot;?</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-se=
rif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; jffs2reset -y</span> <b=
r><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; umount /overlay</span> <br><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; diff --git a/target/linux/ipq40xx/base-files/lib/upgrad=
e/openmesh.sh b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh</sp=
an><o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>&gt; =
index e313562017..8e02186eb8 100644</span> <br><span style=3D'font-family:"=
Calibri",sans-serif'>&gt; --- a/target/linux/ipq40xx/base-files/lib/upgrade=
/openmesh.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&g=
t; +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh</span> <br=
><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ -74,7 +74,7 @@ pl=
atform_do_upgrade_openmesh() {</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; #</span> <br><span styl=
e=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-=
family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; # take car=
e of restoring a saved config</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; [ &quot;$UPGRADE_OPT_SAVE_CON=
FIG&quot; -eq 1 ] &amp;&amp; restore_backup=3D&quot;${MTD_CONFIG_ARGS} -j $=
{UPGRADE_BACKUP}&quot;</span> <br><span style=3D'font-family:"Calibri",sans=
-serif'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; [ -n &quot;$UPGRADE_BACKUP&quot; ] &=
amp;&amp; restore_backup=3D&quot;${MTD_CONFIG_ARGS} -j ${UPGRADE_BACKUP}&qu=
ot;</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-seri=
f'>&quot;-f&quot; here, too?</span> <o:p></o:p></p><p><span style=3D'font-f=
amily:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Cal=
ibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; mtd -q erase inactive=
</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp; tar xf $tar_file ${board_dir}/root -O | mtd -n -p $ke=
rnel_length $restore_backup write - $PART_NAME</span> <br><span style=3D'fo=
nt-family:"Calibri",sans-serif'>&gt; diff --git a/target/linux/ipq40xx/base=
-files/lib/upgrade/platform.sh b/target/linux/ipq40xx/base-files/lib/upgrad=
e/platform.sh</span><o:p></o:p></p><p><span style=3D'font-family:"Calibri",=
sans-serif'>&gt; index 6b9858beb0..c12508c437 100644</span> <br><span style=
=3D'font-family:"Calibri",sans-serif'>&gt; --- a/target/linux/ipq40xx/base-=
files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family:"Calibr=
i",sans-serif'>&gt; +++ b/target/linux/ipq40xx/base-files/lib/upgrade/platf=
orm.sh</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; @@ =
-37,7 +37,7 @@ zyxel_do_upgrade() {</span> <br><span style=3D'font-family:"=
Calibri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",s=
ans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; tar Oxf $tar_file ${board_di=
r}/kernel | mtd write - kernel</span> <br><span style=3D'font-family:"Calib=
ri",sans-serif'>&gt; </span><br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if [ &quot;$UPGRADE_OPT_SAVE_CONFIG&qu=
ot; -eq 1 ]; then</span> <br><span style=3D'font-family:"Calibri",sans-seri=
f'>&gt; +&nbsp;&nbsp;&nbsp;&nbsp; if [ -n &quot;$UPGRADE_BACKUP&quot; ]; th=
en</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-serif=
'>&quot;-f&quot; here, too?</span> <o:p></o:p></p><p><span style=3D'font-fa=
mily:"Calibri",sans-serif'>Sorry for being late with this.</span> <o:p></o:=
p></p><p><span style=3D'font-family:"Calibri",sans-serif'>Best</span> <o:p>=
</o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>Adrian</span>=
 <o:p></o:p></p><p><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nb=
sp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tar=
 Oxf $tar_file ${board_dir}/root | mtd -j &quot;$UPGRADE_BACKUP&quot; write=
 - rootfs</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp; else</span> <br><span style=3D'font-family:"=
Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; tar Oxf $tar_file ${board_dir}/root | mtd write - =
rootfs</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; dif=
f --git a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh b/target/l=
inux/ixp4xx/base-files/lib/upgrade/platform.sh</span><o:p></o:p></p><p><spa=
n style=3D'font-family:"Calibri",sans-serif'>&gt; index 557f43ce6f..f83aa43=
0cf 100644</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;=
 --- a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh</span> <br><s=
pan style=3D'font-family:"Calibri",sans-serif'>&gt; +++ b/target/linux/ixp4=
xx/base-files/lib/upgrade/platform.sh</span> <br><span style=3D'font-family=
:"Calibri",sans-serif'>&gt; @@ -68,7 +68,7 @@ platform_do_upgrade_combined(=
) {</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; [ ${erase_size:-0} -gt 0 ];</span> <b=
r><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp; then</span> <br><span style=3D'font-family:"Calibri",sans-serif=
'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; local append=3D&quot;&quot;</span> <br><span style=3D'font-family:"Ca=
libri",sans-serif'>&gt; -&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; [ -f &quot;$UPGRADE_BACKUP&quot; -a &quot;$UPGRADE_OPT_SA=
VE_CONFIG&quot; -eq 1 ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;<=
/span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ -f &quot;$UPGR=
ADE_BACKUP&quot; ] &amp;&amp; append=3D&quot;-j $UPGRADE_BACKUP&quot;</span=
> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><spa=
n style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # write the kernel</span> =
<br><span style=3D'font-family:"Calibri",sans-serif'>&gt;&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dd if=3D&quot;$1&q=
uot; bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2&gt;/dev/null | \</span>=
 <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; --</span> <br><s=
pan style=3D'font-family:"Calibri",sans-serif'>&gt; 2.21.0</span> <br><span=
 style=3D'font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'=
font-family:"Calibri",sans-serif'>&gt; </span><br><span style=3D'font-famil=
y:"Calibri",sans-serif'>&gt; ______________________________________________=
_</span> <br><span style=3D'font-family:"Calibri",sans-serif'>&gt; openwrt-=
devel mailing list</span> <br><span style=3D'font-family:"Calibri",sans-ser=
if'>&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@l=
ists.openwrt.org</a></span> <br><span style=3D'font-family:"Calibri",sans-s=
erif'>&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-de=
vel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a></span> <o=
:p></o:p></p></div></div></body></html>

--=-=29SJy2e9JctPUy=-=--

--=-=EAmQrEw3y7hi2i=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1+CjUACgkQoNyKO7qx
AnAMQQ/+O2El8WzGyB/49s/4wxwesq0+XIfEaaTCr+D+5rBHKjv/gO6TqfG29L6O
rk8PChn9ZODu2xmnadu4tGBIm/2TH0KrfmTLrlz0Qb8JOcU7VufIZuIzVwU9Z98y
txB1uMJQa2Kyu0a+q7s/w9dY/unNBeryhPEYRL074PXSBNO9HYdSSXgd2xISSX6S
VXzCIarOnGldAmn3KeDcYATKPIT6y2WC2TuFtz1b4QD/EgSBQ/QS32yN6VXvH+16
JwHS5yBNvmlPh8pjMVn+CU61El3CxdjuW81gPddbm7AjtAcFDwIIGt/cmAfKve8C
BdR5UjhvzlWozoQxHVHkS1ieLXZa7r2WWZe0wVQ96jCzZT7lej8HeWqlRSBNQJZx
8pGkQZ5KaKlzpHrMiR4fUPN7YchZNMFPiPxUPFsXP22KB7MWO9fJwcBgqZ/mYM9P
r+A5RHGy72eb+iL9mnE8iI9mmRvYrD9eZdcxevEjirZLPYMec7EEpwRM1iHppmDb
WTyn13LAyHWdtk+K2Ol1UCpFm2McQdrqTtXTcR7EatV5PsLjOIpAhTZWx0WMkk8d
UTEVMED7krCPQd/Wv1mZNnrtKImVDFc3Oti4AMWkkXwcMEXhqnKtXlGumUNEy6kv
6rjSiHhoLR2BOfTt21BMmWW20wQcFz/bwSEFJAxHmFraODl55kU=
=MlNs
-----END PGP SIGNATURE-----


--=-=EAmQrEw3y7hi2i=-=--



--===============3176433434614980994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3176433434614980994==--


