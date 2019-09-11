Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825E2AFAE8
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 12:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4cEovBALHe5UQFqjQYyzJp1D/iP6M3mvh6BtEva7lS4=; b=Cp8yKK7Da/iIBa+ny1ZC67/x3
	asnGUqZd2AJiKiW8AxDb2299qaSTR6fNQZUkCqhGrLYSEu9c4Ctx9CaUuxYbyG3d3CUVgbw1N1uet
	VN2ZbM9831v9oyKU5rxWa1gCDqEJTqfRhnsDgFNurHUZLY9oz7RmwvccGyW6JObcWRdgCTLI6e2z3
	kxbrteTMr1sVhFzKnoN1zVD0AyphJknEljVTiYsGDdy8Lo2yycjviuXNhUuDTe9RkAS/lFFLWGLW5
	MxDMrSZ9ckop8rcSvYcydrHnne/59B9x0q6VnCAAqqMDMlx1ALFfNiKCUh7W8PHKThrN9k1hEfXXU
	lpy+WDT8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80IE-00089v-T4; Wed, 11 Sep 2019 10:56:11 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80Hq-000895-1N
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 10:55:48 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MiJhQ-1ieIZS2Ubu-00fNwA; Wed, 11
 Sep 2019 12:55:36 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
In-Reply-To: <20190906051054.18311-4-zajec5@gmail.com>
Date: Wed, 11 Sep 2019 12:55:36 +0200
Message-ID: <00c801d5688f$7133cd50$539b67f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQECTHRMTCLlI68ZA+Iqs4F85izFNQF8ofV5qMCfTzA=
X-Provags-ID: V03:K1:EQ2/eMk0QUhD5q5TEFQ1v2MHu/MTupOsxrN5VLSxNTAs9VDFZli
 IszNZrn+HkU08Cauink5z/brHxUU05uz2NBXU+SzRuFW5tUY6tn6wMcY1ar79TTPUje5j3Q
 B8yihKF4tJHprOkJ8K9hpPf1o1EFPJLUU9dxBAjAkE8dsdIKSXmOqSTtUqfro2yR4sLaeDI
 NGhXifFs+ggrUx3EZAIuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JW+ALI0WBH8=:CwvNV/zgvHMs6llPeM2zkE
 subz0VckbiK2avrIgZoxF+g2vALzCWYd2o/cpBETkOM1hnghuWSNCHfZ7vlvt91E/8X+thbfs
 SSg+6GOMtD+cBwyD0ftCJ2K1KQ36XgDFGAzx5HnMXG6mTEFTjkvUu8DcQ2hr5oQDA3CmyFIlG
 FyL15MuYvRvzZ6lQ9vyQeS54PMUgi3eDxTU7bD4I+dbztFyrwJks5HUvLzFjg7ZB8IGcdMCVq
 l+10uGeyeF3URTW98e8YQAmYSJe/jhnGzroeNhjTngX6qbU+5fTq4OSWJ54pXygtfIEUHA9Fg
 Hehsiz+1lJMBA3SYd5TC4s6gU6h1w6pRk7bjDZ45QLq/KeOZiS9bzcw9J3OEFA2a/j3Q9smar
 WRfUyl16krnagHBbZD2OLtJwakepaOGkjlKnGFzqsa3dPYjRtzb0rCjhQb43MSuL1QePaie/X
 ZAqb/wJFXji3cj1OiwzddN1WOz2bzSTGbkMdphay8jAjBzIedSJF1Wd9x9j56Go6m1F/MR91i
 NRcno4HYgsgj2P6SPCb4Vs/lc84R9bVBTfNejLS9G4H90dH8gHp/gGIBXpUH1lwPkliiDl5JI
 f+4zmeq+7QNFTaEZFA8xZcLm7dgM2uH/5LbM0gynU9wPRe447IqOQ9Dt7ROYYHf63NeQQLOsu
 bdYlidyfwDdQaXErgCkWKKr4oZDOrkfcVtuU8jr8H3jgS5X4ocimes1K693WZiBvEb1Q7V2uw
 TJgHHMutKPFnaUZAk9ZJmBhu0dHzfvb2ineyMzmURYkvYTnQuEY/9mN2FeDjU8em2HJq8t2P0
 1J6Q20vooTfXRnCm7QqvOFbW4ZgJAqmOmZIIHXYMTmcIY5tXmFoZ9Ercfp1Re83r3FvQm9JMM
 WBpleFBr4BHZfspktATAOax1sfaNF3jrgD4hMjaKw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_035546_379934_C4F74142 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============8696975700748229370=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8696975700748229370==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=NoUJq5lIhAUx7q=-="

This is a multipart message in MIME format.

--=-=NoUJq5lIhAUx7q=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

when looking at the merged patch (unfortunately only then), I found some "i=
ssues" (see below):

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Rafal Milecki
> Sent: Freitag, 6. September 2019 07:11
> To: openwrt-devel@lists.openwrt.org
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>; Jonas Gorski <jonas.gorsk=
i@gmail.com>; Jo-Philipp Wich <jo@mein.io>; John Crispin
> <john@phrozen.org>
> Subject: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use $UPGRADE_B=
ACKUP to check for backup
>=20
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Now that $UPGRADE_BACKUP is set conditionally there is no need to check
> the $UPGRADE_OPT_SAVE_CONFIG anymore. All conditions can be simplified.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  package/base-files/files/lib/upgrade/common.sh          | 2 +-
>  package/base-files/files/lib/upgrade/do_stage2          | 2 +-
>  package/base-files/files/sbin/sysupgrade                | 1 -
>  target/linux/ar71xx/base-files/lib/upgrade/dir825.sh    | 2 +-
>  target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh  | 2 +-
>  target/linux/ar71xx/base-files/lib/upgrade/platform.sh  | 4 ++--
>  target/linux/ath25/base-files/lib/upgrade/platform.sh   | 2 +-
>  target/linux/ath79/base-files/lib/upgrade/platform.sh   | 4 ++--
>  target/linux/imx6/base-files/lib/upgrade/platform.sh    | 2 +-
>  target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh | 2 +-
>  target/linux/ipq40xx/base-files/lib/upgrade/platform.sh | 2 +-
>  target/linux/ixp4xx/base-files/lib/upgrade/platform.sh  | 2 +-
>  12 files changed, 13 insertions(+), 14 deletions(-)
>=20
> diff --git a/package/base-files/files/lib/upgrade/common.sh b/package/bas=
e-files/files/lib/upgrade/common.sh
> index 8e7866f698..0d3162d4fc 100644
> --- a/package/base-files/files/lib/upgrade/common.sh
> +++ b/package/base-files/files/lib/upgrade/common.sh
> @@ -220,7 +220,7 @@ indicate_upgrade() {
>  # $(2): (optional) pipe command to extract firmware, e.g. dd bs=3Dn skip=
=3Dm
>  default_do_upgrade() {
>  	sync
> -	if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ]; then
> +	if [ -n "$UPGRADE_BACKUP" ]; then

Any reason why this is "-n" and not "-f" as below?

>  		get_image "$1" "$2" | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j "$UPGRADE_BACK=
UP" write - "${PART_NAME:-
> image}"
>  	else
>  		get_image "$1" "$2" | mtd $MTD_ARGS write - "${PART_NAME:-image}"
> diff --git a/package/base-files/files/lib/upgrade/do_stage2 b/package/bas=
e-files/files/lib/upgrade/do_stage2
> index 0e6cc1bfc3..0e32445743 100755
> --- a/package/base-files/files/lib/upgrade/do_stage2
> +++ b/package/base-files/files/lib/upgrade/do_stage2
> @@ -11,7 +11,7 @@ else
>  	default_do_upgrade "$IMAGE"
>  fi
>=20
> -if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && type 'platform_copy_config' >=
/dev/null 2>/dev/null; then
> +if [ -n "$UPGRADE_BACKUP" ] && type 'platform_copy_config' >/dev/null 2>=
/dev/null; then

Here I'm not so sure about "-f" vs. "-n" ...

>  	platform_copy_config
>  fi
>=20
> diff --git a/package/base-files/files/sbin/sysupgrade b/package/base-file=
s/files/sbin/sysupgrade
> index f18143bff4..935d08048e 100755
> --- a/package/base-files/files/sbin/sysupgrade
> +++ b/package/base-files/files/sbin/sysupgrade
> @@ -371,7 +371,6 @@ else
>  		$backup_attr
>  		\"command\": $(json_string "$COMMAND"),
>  		\"options\": {
> -			\"save_config\": $SAVE_CONFIG,
>  			\"save_partitions\": $SAVE_PARTITIONS
>  		}
>  	}"
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh b/targe=
t/linux/ar71xx/base-files/lib/upgrade/dir825.sh
> index c694c2e6f2..e991a06b7a 100644
> --- a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
> @@ -75,7 +75,7 @@ dir825b_do_upgrade_combined() {
>=20
>  	if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then
>  		local append=3D""
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>=20
>  		sync
>  		dd if=3D"$fw_file" bs=3D64k skip=3D1 count=3D$fw_blocks 2>/dev/null | \
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh b/tar=
get/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
> index 8536d4ba4a..f43bdcea7f 100644
> --- a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
> @@ -159,7 +159,7 @@ platform_do_upgrade_openmesh()
>  	local cfg_size=3D kernel_size=3D rootfs_size=3D
>  	local append=3D""
>=20
> -	[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUP"
> +	[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>=20
>  	cfg_size=3D$(dd if=3D"$img_path" bs=3D2 skip=3D35 count=3D4 2>/dev/null)
>  	kernel_size=3D$(dd if=3D"$img_path" bs=3D2 skip=3D71 count=3D4 2>/dev/n=
ull)
> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh b/tar=
get/linux/ar71xx/base-files/lib/upgrade/platform.sh
> index 726163291d..86e7b6386b 100755
> --- a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
> @@ -65,7 +65,7 @@ platform_do_upgrade_combined() {
>  	then
>  		local rootfspart=3D$(platform_find_rootfspart "$partitions" "$kernelpa=
rt")
>  		local append=3D""
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>=20
>  		if [ "$PLATFORM_DO_UPGRADE_COMBINED_SEPARATE_MTD" -ne 1 ]; then
>  		    ( dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2>/dev=
/null; \
> @@ -164,7 +164,7 @@ platform_do_upgrade_compex() {
>=20
>  	if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then
>  		local append=3D""
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUPs"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUPs"

Is there a reason for the trailing "s" here or is this a typo: =3D"-j $UPGR=
ADE_BACKUPs" ?

>=20
>  		sync
>  		dd if=3D"$fw_file" bs=3D64k skip=3D1 count=3D$fw_blocks 2>/dev/null | \
> diff --git a/target/linux/ath25/base-files/lib/upgrade/platform.sh b/targ=
et/linux/ath25/base-files/lib/upgrade/platform.sh
> index 0dde103605..778bbf5a39 100644
> --- a/target/linux/ath25/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ath25/base-files/lib/upgrade/platform.sh
> @@ -67,7 +67,7 @@ platform_do_upgrade() {
>  	   [ ${erase_size:-0} -gt 0 ];
>  	then
>  		local append=3D""
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>=20
>  		( dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2>/dev/nul=
l; \
>  		  dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D$((1+$kern_blocks)) count=3D$root=
_blocks 2>/dev/null ) | \
> diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/targ=
et/linux/ath79/base-files/lib/upgrade/platform.sh
> index f7e62143e7..f4fca06384 100644
> --- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
> @@ -14,7 +14,7 @@ redboot_fis_do_upgrade() {
>  	if [ "$magic" =3D "4349" ]; then
>  		local kern_length=3D0x$(dd if=3D"$sysup_file" bs=3D2 skip=3D1 count=3D=
4 2>/dev/null)
>=20
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CONFIG" -eq 1=
 ] && append=3D"-j
> $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>  		dd if=3D"$sysup_file" bs=3D64k skip=3D1 2>/dev/null | \
>  			mtd -r $append -F$kern_part:$kern_length:0x80060000,rootfs write - $k=
ern_part:rootfs
>=20
> @@ -22,7 +22,7 @@ redboot_fis_do_upgrade() {
>  		local board_dir=3D$(tar tf $sysup_file | grep -m 1 '^sysupgrade-.*/$')
>  		local kern_length=3D$(tar xf $sysup_file ${board_dir}kernel -O | wc -c)
>=20
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CONFIG" -eq 1=
 ] && append=3D"-j
> $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>  		tar xf $sysup_file ${board_dir}kernel ${board_dir}root -O | \
>  			mtd -r $append -F$kern_part:$kern_length:0x80060000,rootfs write - $k=
ern_part:rootfs
>=20
> diff --git a/target/linux/imx6/base-files/lib/upgrade/platform.sh b/targe=
t/linux/imx6/base-files/lib/upgrade/platform.sh
> index 9414b18710..a090cc080b 100755
> --- a/target/linux/imx6/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/imx6/base-files/lib/upgrade/platform.sh
> @@ -75,7 +75,7 @@ platform_pre_upgrade() {
>=20
>  	case "$board" in
>  	apalis*)
> -		[ "$UPGRADE_OPT_SAVE_CONFIG" -eq 0 ] && {
> +		[ -z "$UPGRADE_BACKUP" ] && {

Really "-z" or "! -f"?

>  			jffs2reset -y
>  			umount /overlay
>  		}
> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh b/ta=
rget/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> index e313562017..8e02186eb8 100644
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> @@ -74,7 +74,7 @@ platform_do_upgrade_openmesh() {
>  	#
>=20
>  	# take care of restoring a saved config
> -	[ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && restore_backup=3D"${MTD_CONFIG_=
ARGS} -j ${UPGRADE_BACKUP}"
> +	[ -n "$UPGRADE_BACKUP" ] && restore_backup=3D"${MTD_CONFIG_ARGS} -j ${U=
PGRADE_BACKUP}"

"-f" here, too?

>=20
>  	mtd -q erase inactive
>  	tar xf $tar_file ${board_dir}/root -O | mtd -n -p $kernel_length $resto=
re_backup write - $PART_NAME
> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/ta=
rget/linux/ipq40xx/base-files/lib/upgrade/platform.sh
> index 6b9858beb0..c12508c437 100644
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
> @@ -37,7 +37,7 @@ zyxel_do_upgrade() {
>=20
>  	tar Oxf $tar_file ${board_dir}/kernel | mtd write - kernel
>=20
> -	if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ]; then
> +	if [ -n "$UPGRADE_BACKUP" ]; then

"-f" here, too?

Sorry for being late with this.

Best

Adrian

>  		tar Oxf $tar_file ${board_dir}/root | mtd -j "$UPGRADE_BACKUP" write -=
 rootfs
>  	else
>  		tar Oxf $tar_file ${board_dir}/root | mtd write - rootfs
> diff --git a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh b/tar=
get/linux/ixp4xx/base-files/lib/upgrade/platform.sh
> index 557f43ce6f..f83aa430cf 100644
> --- a/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ixp4xx/base-files/lib/upgrade/platform.sh
> @@ -68,7 +68,7 @@ platform_do_upgrade_combined() {
>  	   [ ${erase_size:-0} -gt 0 ];
>  	then
>  		local append=3D""
> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append=
=3D"-j $UPGRADE_BACKUP"
> +		[ -f "$UPGRADE_BACKUP" ] && append=3D"-j $UPGRADE_BACKUP"
>=20
>  		# write the kernel
>  		dd if=3D"$1" bs=3D$CI_BLKSZ skip=3D1 count=3D$kern_blocks 2>/dev/null =
| \
> --
> 2.21.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=NoUJq5lIhAUx7q=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl140qQACgkQoNyKO7qx
AnBIfw//fGttizjQFPfMKX490MRs8Qthmk/92+mQBsjnsXO9Rm+rLxk2bR+/WMAX
J3+1edeZ9YkMeoJj66Cp8X86kzTgTM4hxMJd6RUo+B7xFY3xU/VX02Siluj1aI0f
4MSChQKLKYUUecnYU7ajq4Qc6WBvy8ixiXj8wcZb3dv96dSy6Y2lIcloZ6BY2fTB
9hVgKlPHLd9tiS1zlSDgaW3FMuE68GObpWflwcSChll63kKQbdSCK2HfAT0baONJ
09DbTHArS9gf0Tq96Wi/UJiOJ/NQuwpwuBgVWYDPOqejMWfCZiEbrWaB/6V2z51k
2cHtGYyza/vTlES/+fv+BlXeT1Oox6ih4RYJouP42rU5r9BDUjGFiPxhsvL21MKo
MZ9J8e4zYQZ0l2KxoWQqXK9CWLviKalEsZ7C4wPUGexzHZ7sX49JX0i+jNxxBbv7
V1nRHI6pr1pFIn98izKwgBKKJldEuBgFBpyoiF9DR9iLOjYs1ah57HTX6EqP6VLL
9PyVfOKDnwF247l2Ue2fN2ThyT7fbOcTHH3ZNPrtJNlpiqeox+OvW9VpFc7ma7za
5r7TjTzb39CQ2SKCbIgnioddg2/AAWss+zUCXN33UMtNRtv5L5r3Y2NvxdcnQXMc
Z66ryFPbV1Tc+HbdQvsig6HlUFoq5hBQs2JiVz/0CzYHvxFmSos=
=NKRk
-----END PGP SIGNATURE-----


--=-=NoUJq5lIhAUx7q=-=--



--===============8696975700748229370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8696975700748229370==--


