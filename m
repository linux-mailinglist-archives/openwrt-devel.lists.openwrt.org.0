Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE77A3150E
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 21:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6hGc4o7Bn/OBpz5T/i7Rq+xCqrVLjPwLbz0WBjC5zA=; b=sFNzcOQHVR0CPo
	ywSElojw402ReQsHfae51joaLJ7STg++eqD+aeF+X+eXM9eAT4fr6YMDRep6JnNS0Ed8wjO/vZpMo
	PLEV0Rmo13fkevf/N+hRtU+jHP+5tx1XePGhAh7q0ee83ITMxWfBQ0fXYIB86bdVPuQA8MR2UMuOL
	oH0hprXU4c6D/swQbHHUs0xV2+bULVHIe1vxi6ZXR1OtX/v1euahUB75NxCODontBoFUmWTCIB01Q
	CfWagu2a0AQl28TNo3xPtRXWyCsz2WNfL7YUgSWaGCXOmUGuofAjJOfefHTveWow5f5eBThqEip5+
	Ila8gi9HssLFHSiq5LYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmpS-00067I-5b; Fri, 31 May 2019 19:04:38 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmpD-0005zU-WC
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 19:04:28 +0000
Received: by mail-qt1-x843.google.com with SMTP id l3so2213094qtj.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 12:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FiuqW7C3+o3fRHdxHsMySpTz/HbmpWrEcx4yUmW7YbM=;
 b=XcTCAGe14S4Fth7KZY5tn/X6YmOf8I/fycGPwrSwVK1Xp/cYZdK8vXv2gSfdNazYNu
 EhUC5hnJdcGa6vBuzluVmg7DLVK72GrSuzWIE3DWLveSnQAA6+GlN7wEhGZ4/St5J1K9
 6st3y6C0M09gkeXzVbThrYhPrp0OxhRouOmuwF2+jIvZj2NVDp7lZqk6W9gNJjVzS26T
 KsYRdMlir3lFeQn7ELQjjh8cnPvIN4sAKMkAE5q466T50ehn1UxqRDevrTPSL5qtodwy
 Pzee01LvfRpMJLBWspH22IWubEfHGvZwOCdLYT4x1LNiQ6tQuhewkOyeVJd/ZyXWOqR4
 GQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FiuqW7C3+o3fRHdxHsMySpTz/HbmpWrEcx4yUmW7YbM=;
 b=BJnR8lJUG3ZDO4i8qDcdPgmFuvQWEo1ylyDmxvt+D7XnUKurT0PttMWGDHMM6si3Pn
 dMAi0vegYLOZkz1j18x1Ezqdg4B2RLKO990JHwm4c/Ddg7lXGPgLEzwRjU+/6crEl9Ko
 GsEF3ZtTmhK24OAlV5goXSBsijLlhLW57f3udQY7rJxmvd11Wu1kJyfzDIqkpqOuDx+w
 1h6zQhyTsJn6DeL2uvhlLarWlEEzctydNOXZBS4zXyZOtMUOqsYcE9LFFzMX9wsYGwph
 I8aiYFAfs1bccUKIbZEJMvSett9Fl3FW7wytsPan6vipDTmPPl2tBruerOkITI1IG27B
 Nmew==
X-Gm-Message-State: APjAAAWELs6ZGxbMLYQVtm3O427nC+VdEAPrn6nkpvr5LvVs3Vu56wjK
 Dtu7JZ1vOsZMc2Rn4TqYg9NzQKiiUazUwBUKYhZUTg==
X-Google-Smtp-Source: APXvYqxcVbGWjL9BZ4Qj+6ulnzfLMpuKO3GoQ0zAk1k7b3x2Q1as8Xhc+S6RYAq72Lo2mLV2ksUa2IjPXDndjVv+mcc=
X-Received: by 2002:a0c:8767:: with SMTP id 36mr10105250qvi.28.1559329462118; 
 Fri, 31 May 2019 12:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190531165033.20290-1-Jason@zx2c4.com>
In-Reply-To: <20190531165033.20290-1-Jason@zx2c4.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 31 May 2019 21:04:09 +0200
Message-ID: <CAJLcKsHq67KdGyoHdyDh7=MWenM2YpQS96-c++eZVBhpy_aU+Q@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_120424_326278_8B7FC384 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20190531
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 31, 2019 at 6:50 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> * tools: add wincompat layer to wg(8)
>
> Consistent with a lot of the Windows work we've been doing this last cycle,
> wg(8) now supports the WireGuard for Windows app by talking through a named
> pipe. You can compile this as `PLATFORM=windows make -C src/tools` with mingw.
> Because programming things for Windows is pretty ugly, we've done this via a
> separate standalone wincompat layer, so that we don't pollute our pretty *nix
> utility.
>
> * compat: udp_tunnel: force cast sk_data_ready
>
> This is a hack to work around broken Android kernel wrapper scripts.
>
> * wg-quick: freebsd: workaround SIOCGIFSTATUS race in FreeBSD kernel
>
> FreeBSD had a number of kernel race conditions, some of which we can vaguely
> work around. These are in the process of being fixed upstream, but probably
> people won't update for a while.
>
> * wg-quick: make darwin and freebsd path search strict like linux
>
> Correctness.
>
> * socket: set ignore_df=1 on xmit
>
> This was intended from early on but didn't work on IPv6 without the ignore_df
> flag. It allows sending fragments over IPv6.
>
> * qemu: use newer iproute2 and kernel
> * qemu: build iproute2 with libmnl support
> * qemu: do not check for alignment with ubsan
>
> The QEMU build system has been improved to compile newer versions. Linking
> against libmnl gives us better error messages. As well, enabling the alignment
> check on x86 UBSAN isn't realistic.
>
> * wg-quick: look up existing routes properly
> * wg-quick: specify protocol to ip(8), because of inconsistencies
>
> The route inclusion check was wrong prior, and Linux 5.1 made it break
> entirely. This makes a better invocation of `ip route show match`.
>
> * netlink: use new strict length types in policy for 5.2
> * kbuild: account for recent upstream changes
> * zinc: arm64: use cpu_get_elf_hwcap accessor for 5.2
>
> The usual churn of changes required for the upcoming 5.2.
>
> * timers: add jitter on ack failure reinitiation
>
> Correctness tweak in the timer system.
>
> * blake2s,chacha: latency tweak
> * blake2s: shorten ssse3 loop
>
> In every odd-numbered round, instead of operating over the state
>     x00 x01 x02 x03
>     x05 x06 x07 x04
>     x10 x11 x08 x09
>     x15 x12 x13 x14
> we operate over the rotated state
>     x03 x00 x01 x02
>     x04 x05 x06 x07
>     x09 x10 x11 x08
>     x14 x15 x12 x13
> The advantage here is that this requires no changes to the 'x04 x05 x06 x07'
> row, which is in the critical path. This results in a noticeable latency
> improvement of roughly R cycles, for R diagonal rounds in the primitive. As
> well, the blake2s AVX implementation is now SSSE3 and considerably shorter.
>
> * tools: allow setting WG_ENDPOINT_RESOLUTION_RETRIES
>
> System integrators can now specify things like
> WG_ENDPOINT_RESOLUTION_RETRIES=infinity when building wg(8)-based init
> scripts and services, or 0, or any other integer.
>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Patch applied to master; thx

Hans
> ---
>  package/network/services/wireguard/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
> index c04762b..e3471d0 100644
> --- a/package/network/services/wireguard/Makefile
> +++ b/package/network/services/wireguard/Makefile
> @@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
>
>  PKG_NAME:=wireguard
>
> -PKG_VERSION:=0.0.20190406
> +PKG_VERSION:=0.0.20190531
>  PKG_RELEASE:=1
>
>  PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
> -PKG_HASH:=2f06f3adf70b95e74a7736a22dcf6e9ef623b311a15b7d55b5474e57c3d0415b
> +PKG_HASH:=8b0280322ec4c46fd1a786af4db0c4d0c600053542c4563582baac478e4127b1
>
>  PKG_LICENSE:=GPL-2.0 Apache-2.0
>  PKG_LICENSE_FILES:=COPYING
> --
> 2.21.0
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
