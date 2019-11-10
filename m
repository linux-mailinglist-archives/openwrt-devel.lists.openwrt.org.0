Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA43EF61E4
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 01:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5heDFTXxf3EvAD3uBTlo8C2xOszPTEtAbkWpnm4MQo=; b=RNMRMOb6OnwqWa
	QXxZ/y2tDaWHrTmNfCSUCm1hrlBsqo5rTPq4gaZ02smZQQYkKgRJS38sNoVTEdbJqwuxNcqvGaWuB
	1d5HHEcxItfZucbZAgjF+6+IyMEw0yFXOIdhE/8uvoPYtugnuLS0K+aKRcEkWfQhGH8FyEG/wHrYJ
	KVJwP34HujsfNGPSJxMpcmY8NWq8zeOf4YVk9EIAbP+2sZLYN0pR/qJ16/KuEledNw4d0JoSWxIpf
	MOomLbA12XB6w8N2hTDUGRmpo/RdEisrmDhkxqRYTNj/wPxaGsC4oOjw26v3Pn+ssMY17rbs+Gss3
	4EkISq3WrF8r7bnFW98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTap1-0004wR-1C; Sun, 10 Nov 2019 00:11:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTaor-0004v2-FC
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 00:11:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so9815863wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 16:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3P/rLyIOa+c8gy9WXCtyrfs4CZvodN3Sw4tJGL+EjTU=;
 b=vWjyKZGhXJ17MKpk83kvlm8+hyuoC6pMvNq3VG4qf7srX4uiU6sMr4VPolJOj3dXO2
 kUjZOlpIqdhf/stanpEHHZF1Am4p93xDd6eFmJ8K5y7GwyQKuDQtYbI2BtCTU4R6tkEE
 WNzglvCC8TyLNDe4Ah0hQBfQFEQLh2PKikA+GCHaqewTOBTWRpGVRzqN3exQG07cVoJQ
 APe7fpg9ELGI/c7DGacYaH0pjKXJIE9HWtDsV+Z85L5SfkVChYGNXUDgBnSu6cbeW+AO
 emvXVZmUWkoNRv+Z5H33MiZQaAM2tl1aPe6NZJFpG1aoxqRDzArKn+btGtWOvLeocLIz
 VejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3P/rLyIOa+c8gy9WXCtyrfs4CZvodN3Sw4tJGL+EjTU=;
 b=Kw3P2tqfg+cAkj45a/XufY4HS03KN8HwofdMgY6RlghL19OcwDpYdbAPcb05fXRC9h
 FaKtmIiINpHHLCVnviQESJP++q09WKul8HCCcA37njOU50mfobLzVy6e4fmsaYODSA11
 SsVMppwSG1n7okLiOw8Mu0ok84sE3OyKPI0cjAdOrDXuDS8vUEtPN5hOeB++6+fzuYbb
 yKZLdLrVuATp25YxCTqvE4DGS4w5Jv+8/ktfJrD6e61rMoaOce0bUmpJ6LQoHqwXRhcL
 wv5hYLikFn6ZsDF5bybYiH2BpNyUqoF3IDhijzdjgl/pQs62YfyrHRwmu3ts3g0mMnMn
 Nxsg==
X-Gm-Message-State: APjAAAUIVoLNdCMspo1IIZp7fSKOSCyqMsEtHgncdCE8Ss3W52cp+UL4
 WM4eswqMLQ+BqkDIIxEFGIgQPhGx
X-Google-Smtp-Source: APXvYqzz4j+5/BbXQLPdWxCmzY7AGucilsXX0zZRvWu2RV3nuwOy3ChpU3rwrIgfp/UYxfoOIrKv/Q==
X-Received: by 2002:a05:600c:22cb:: with SMTP id
 11mr14636691wmg.117.1573344658957; 
 Sat, 09 Nov 2019 16:10:58 -0800 (PST)
Received: from debian64.daheim (pD9E29CD4.dip0.t-ipconnect.de.
 [217.226.156.212])
 by smtp.gmail.com with ESMTPSA id d20sm21334861wra.4.2019.11.09.16.10.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 16:10:57 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93-RC1)
 (envelope-from <chunkeey@gmail.com>)
 id 1iTaoL-0005BO-NM; Sun, 10 Nov 2019 01:10:33 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 Nov 2019 01:10:33 +0100
Message-ID: <1966605.zbIeRJutgP@debian64>
In-Reply-To: <20191109225217.19505-1-devel-sven@geroedel.de>
References: <20191109225217.19505-1-devel-sven@geroedel.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_161105_530221_E45BF35F 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: fritz4040 depends on
 uboot-fritz4040
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
Cc: mail@david-bauer.net, Sven Roederer <devel-sven@geroedel.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Saturday, 9 November 2019 23:52:17 CET Sven Roederer wrote:
> The "append-uboot" macro is looking for the file "$(STAGING_DIR_IMAGE)/uboot-fritz4040.bin"
> which is provided by the u-boot-fritz4040 package. If this is not build, image creation
> will fail with "file not found".

The FRITZ!Box 4040 is a special case as the "eva.bin" image file needs the
u-boot binary to work as intended.

In OpenWrt's u-boot.mk, the u-boots for a target are usually get built/enabled
because <https://github.com/openwrt/openwrt/blob/master/include/u-boot.mk#L63>
adds something like this to the u-boot packages:
|Default: y if (TARGET_ipq40xx_generic_Default || TARGET_ipq40xx_generic_DEVICE_avm_fritzbox-4040 || TARGET_DEVICE_ipq40xx_generic_DEVICE_avm_fritzbox-4040)

This causes the needed u-boot package to be included automatically.
Unless the package is either deselected actively, or accidentally.
(This can happen when a existing .config in which the device was
previously disabled, is grandfathered in. Because the existing
"not set" will take preference [the diffconfig.pl will catch this]).

Technically, the eva.bin isn't necessary. It allows for an easier
installation, but nobody apart from the 4040 uses the append-uboot
and there have been issues in the past with this as well.

Question is: should we add that dependency, ditch the eva.bin image
(or make it so that it's optional - this requires some changes to
the builtsystem) or decide that "this is a bug elsewhere"?

Cheers,
Christian
> ---
>  target/linux/ipq40xx/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
> index a9c5e625af..7ae6f36baa 100644
> --- a/target/linux/ipq40xx/image/Makefile
> +++ b/target/linux/ipq40xx/image/Makefile
> @@ -130,7 +130,7 @@ define Device/avm_fritzbox-4040
>  	IMAGES = eva.bin sysupgrade.bin
>  	IMAGE/eva.bin := append-uboot | pad-to $$$$(UBOOT_PARTITION_SIZE) | append-kernel | append-rootfs | pad-rootfs
>  	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
> -	DEVICE_PACKAGES := fritz-tffs fritz-caldata
> +	DEVICE_PACKAGES := fritz-tffs fritz-caldata u-boot-fritz4040



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
