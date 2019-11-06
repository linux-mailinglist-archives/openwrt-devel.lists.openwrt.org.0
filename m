Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53DF221A
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 23:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DXyyjMMOua35drLUSTYiBSdtM3tVrVXPGFMrd7hXfM=; b=PsizBdLpkqYznx
	Qnbtn1bPuPoOw+flRv9Yo1pKVSoSOElTvo3yYQaSIsdoT0OReJtHINHcO8SLjMMQ6enRQODwkG3dG
	RHMBors3P8PxjgsQ9OWJDclY3RyHNN9S08IzX2rKX/rNP0eMuxI0VYp8RclgqtlUmhMpDHLSPYGGq
	i2JXZ96ocoyYb58qtked5aTmXR5rzEwzSvjyorm0hliTvWQ9UIWEDGjzGCyTpap8IfB+dI2MKSzv5
	frvMfleOusZSrPgJdXEahXSrfcV5dFP8O0Zfk/mJz0Tsa4rmUxdJDsT4G4tMWtNdu5y7pVQUET34X
	ZaSCP4sxpuOVdJ89HI+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSU6I-0004km-Rh; Wed, 06 Nov 2019 22:48:30 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSU66-0004kH-RZ
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 22:48:20 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iSU5v-0007Ew-AM; Wed, 06 Nov 2019 23:48:08 +0100
Date: Wed, 6 Nov 2019 23:47:48 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20191106224748.GA1330@makrotopia.org>
References: <20191025035753.10050-1-lede@allycomm.com>
 <20191025035753.10050-2-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025035753.10050-2-lede@allycomm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_144818_892634_6CA9A542 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] build: sysupgrade-tar alt-board=
 for legacy upgrades
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
Cc: openwrt-devel@lists.openwrt.org, Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Jeff,

On Thu, Oct 24, 2019 at 08:57:52PM -0700, Jeff Kletsky wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>
> 
> Targets that use nand_do_platform_check() can't use SUPPORTED_DEVICES
> as the check requires ./sysupgrade-legacy_boardname/CONTROL to be
> non-zero length as extracted from the tar file. Previously, only
> ./sysupgrade-new_boardname/CONTROL was present.
> 
> This prevents upgrade without --force from, for example, ar71xx to ath79
> 
> Add an optional alt-board= parameter to parsing of sysupgrade-tar that
> creates a directory at the expected location for the alt-board name,
> copying over the CONTROL file.
> 
> The contents of CONTROL are unmodified by this commit.
> 
> Careful ordering of the tar file is required as existing builds
> expect the kernel and root assets to be in the first directory
> returned by tar -tf that matches sysupgrade-*/
> 
> Run-tested-on: EA8300, GL-AR300M, GL-AR750S
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---
>  include/image-commands.mk |  1 +
>  scripts/sysupgrade-tar.sh | 40 +++++++++++++++++++++++++++++++++------
>  2 files changed, 35 insertions(+), 6 deletions(-)
> 
> diff --git a/include/image-commands.mk b/include/image-commands.mk
> index 5dfd6a2c2f..011e30a7e3 100644
> --- a/include/image-commands.mk
> +++ b/include/image-commands.mk
> @@ -321,6 +321,7 @@ endef
>  define Build/sysupgrade-tar
>  	sh $(TOPDIR)/scripts/sysupgrade-tar.sh \
>  		--board $(if $(BOARD_NAME),$(BOARD_NAME),$(DEVICE_NAME)) \
> +		--alt-boards "$(call param_get,alt-board,$(1))" \
>  		--kernel $(call param_get_default,kernel,$(1),$(IMAGE_KERNEL)) \
>  		--rootfs $(call param_get_default,rootfs,$(1),$(IMAGE_ROOTFS)) \
>  		$@
> diff --git a/scripts/sysupgrade-tar.sh b/scripts/sysupgrade-tar.sh
> index b93b2584bb..5071a2f5f8 100755
> --- a/scripts/sysupgrade-tar.sh
> +++ b/scripts/sysupgrade-tar.sh
> @@ -3,11 +3,17 @@
>  . $TOPDIR/scripts/functions.sh
>  
>  board=""
> +alt_boards=""
>  kernel=""
>  rootfs=""
>  outfile=""
>  err=""
>  
> +do_exit() {
> +	[ -d "$tmpdir" ] && rm -rf "$tmpdir"
> +	exit $err
> +}
> +
>  while [ "$1" ]; do
>  	case "$1" in
>  	"--board")
> @@ -16,6 +22,12 @@ while [ "$1" ]; do
>  		shift
>  		continue
>  		;;
> +	"--alt-boards")
> +		alt_boards="$2"
> +		shift
> +		shift
> +		continue
> +		;;
>  	"--kernel")
>  		kernel="$2"
>  		shift
> @@ -39,7 +51,7 @@ while [ "$1" ]; do
>  done
>  
>  if [ ! -n "$board" -o ! -r "$kernel" -a  ! -r "$rootfs" -o ! "$outfile" ]; then
> -	echo "syntax: $0 [--board boardname] [--kernel kernelimage] [--rootfs rootfs] out"
> +	echo "syntax: $0 [--board boardname] [--alt-boards 'alt board list'] [--kernel kernelimage] [--rootfs rootfs] out"
>  	exit 1
>  fi
>  
> @@ -54,6 +66,7 @@ if [ -z "$tmpdir" ]; then
>  fi
>  
>  mkdir -p "${tmpdir}/sysupgrade-${board}"
> +
>  echo "BOARD=${board}" > "${tmpdir}/sysupgrade-${board}/CONTROL"
>  if [ -n "${rootfs}" ]; then
>  	case "$( get_fs_type ${rootfs} )" in
> @@ -67,18 +80,33 @@ if [ -n "${rootfs}" ]; then
>  fi
>  [ -z "${kernel}" ] || cp "${kernel}" "${tmpdir}/sysupgrade-${board}/kernel"
>  
> -mtime=""
> +# "Legacy" nand_upgrade_tar() finds asset directory with
> +# $(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
> +# and doesn't use CONTROL at all; add the "real" files first
> +
> +tar_args="--directory ${tmpdir} --sort=name --owner=0 --group=0 --numeric-owner \
> +	 -vf ${tmpdir}/sysupgrade.tar"
>  if [ -n "$SOURCE_DATE_EPOCH" ]; then
> -	mtime="--mtime=@${SOURCE_DATE_EPOCH}"
> +	tar_args="${tar_args} --mtime=@${SOURCE_DATE_EPOCH}"
>  fi
>  
> -(cd "$tmpdir"; tar --sort=name --owner=0 --group=0 --numeric-owner -cvf sysupgrade.tar sysupgrade-${board} ${mtime})
> +tar -c $tar_args $(ls -A "${tmpdir}")
>  err="$?"
> +[ "$err" != 0 ] && do_exit
> +
> +for ab in $alt_boards ; do
> +	[ "$ab" = "$board" ] && continue
> +	mkdir "${tmpdir}/sysupgrade-${ab}/"
> +	cp -vp "${tmpdir}/sysupgrade-${board}/CONTROL" "${tmpdir}/sysupgrade-${ab}/"

Why not just add a symlink to the tar archive instead of a copy?
I know it doesn't matter much due to compress, jet I'd consider it a
more clean solution.

> +	tar -r $tar_args "sysupgrade-${ab}/CONTROL"
> +	err="$?"
> +	[ "$err" != 0 ] && do_exit
> +done
> +
>  if [ -e "$tmpdir/sysupgrade.tar" ]; then
>  	cp "$tmpdir/sysupgrade.tar" "$outfile"
>  else
>  	err=2
>  fi
> -rm -rf "$tmpdir"
>  
> -exit $err
> +do_exit
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
