Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A479E8A5E
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 15:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kkJpXy+elia++rpfU5vtZsVEyneXnaf+ia14kUaBj7A=; b=rh25+6Iku3QCYzhctLOUvdvgG
	Sgq13NzL17KOu9zvZt5EjwI2YB/56kJOvQ/alajhYF+dhS6ZdOhefs7/WMCxrMLKFRdRiHDl9AmAB
	EdBESzBMYwtfLsz9tiqea0LQjlJDRs5YSdXPveAg2adLZyjBpZBk0wXudxuwWhBOZRw7TohGbXVfQ
	AFLudhvWE6AUR5MT41hkqBfqlC4ZP0PsivlNdY/MPEZNH56GGclVv5cq2ZiuWZkCfjMrpVM+W7Ta9
	1spNWq5rou7VgMXwiJqvDm9jp0sl8zHSutn43qvwuh2nCV5mqKzXZk7Np7CCDPRUZDlSZw14dzG3r
	/Q2ioIYYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSF4-0000Sv-9Z; Tue, 29 Oct 2019 14:13:02 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSEs-0000Rl-SL
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 14:12:52 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 3D2A939908;
 Tue, 29 Oct 2019 07:12:45 -0700 (PDT)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191027233051.7840-1-freifunk@adrianschmutzler.de>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <8da2e892-72f1-4383-35a6-8cdea112f7c8@allycomm.com>
Date: Tue, 29 Oct 2019 07:12:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191027233051.7840-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071250_922070_35AE87C7 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: fix several issues for ZyXEL
 NBG6716
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 10/27/19 4:30 PM, Adrian Schmutzler wrote:
> This fixes several issues introduced with ZyXEL NBG6716 support:
> - Inhomogeneous indent
> - Wrong ath10k MAC patching function
> - Wrong brackets for pad-to in nand.mk
> - Add missing DEVICE_MODEL
> - Remove k2t.sh include (copy/paste leftover)
>
> Fixes: 99835e09992b ("ath79: add support for ZyXEL NBG6716")
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>   .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 22 +++++++++----------
>   target/linux/ath79/image/nand.mk              | 21 +++++++++---------
>   .../etc/hotplug.d/firmware/11-ath10k-caldata  |  3 +--
>   3 files changed, 23 insertions(+), 23 deletions(-)
>
> [...]
>
> diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
> index c11ff6a257..049701a971 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -1,13 +1,13 @@
>   # attention: only zlib compression is allowed for the boot fs
> -define  Build/zyxel-buildkerneljffs
> -        rm -rf  $(KDIR_TMP)/zyxelnbg6716
> -        mkdir -p $(KDIR_TMP)/zyxelnbg6716/image/boot
> -        cp $@ $(KDIR_TMP)/zyxelnbg6716/image/boot/vmlinux.lzma.uImage
> -        $(STAGING_DIR_HOST)/bin/mkfs.jffs2 \
> -                --big-endian --squash-uids -v -e 128KiB -q -f -n -x lzma -x rtime \
> -                -o $@ \
> -                -d $(KDIR_TMP)/zyxelnbg6716/image
> -        rm -rf $(KDIR_TMP)/zyxelnbg6716
> +define Build/zyxel-buildkerneljffs
> +	rm -rf  $(KDIR_TMP)/zyxelnbg6716
> +	mkdir -p $(KDIR_TMP)/zyxelnbg6716/image/boot
> +	cp $@ $(KDIR_TMP)/zyxelnbg6716/image/boot/vmlinux.lzma.uImage
> +	$(STAGING_DIR_HOST)/bin/mkfs.jffs2 \
> +		--big-endian --squash-uids -v -e 128KiB -q -f -n -x lzma -x rtime \
> +		-o $@ \
> +		-d $(KDIR_TMP)/zyxelnbg6716/image
> +	rm -rf $(KDIR_TMP)/zyxelnbg6716
>   endef
>   
>   define Build/zyxel-factory
> [...]

"Build/zyxel-buildkerneljffs" looks to be a "generic", however it is
using a device-specific name for its temp directory.

At least in my opinion, the directory should either be created as a
result of a call to mktemp(1), or generically named.

Jeff Kletsky



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
