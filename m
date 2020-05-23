Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CFD1DF4ED
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 07:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVGtjFBWN+QLd197Xoo325G6NG3WugRKoyoG1mPWb0Y=; b=DEozjRvzD4qLTm
	ljuSl1dXri9kwJai+7io17uAzr2L9tA1b//VTmQo2Hi9CgpvrTazlOFkRUxmgrjVHOuxqeFhr7aN7
	EsxwnBXqdyP3OGii0Oq2erCbCgcOdCTKuPiEEwxTnhj70QNIEolluNNBlHS/yX3L0VFJR5R/ork+Q
	s7l1644I6ITkaGakVOzSVaJ261q/MuhYnrzekitExObHT8zHg4CQ9WoUEIsOHd50z8dyBdQNl94YT
	nDJ0D1h+PL0Os/+vQiXYaAFViThrm1ENb+z8HiPGc7aYiqXjmBtWoaMO9sM+ZWqnBP0LoL4y9nwso
	avxSJMl0eTsIocGFOD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMTn-0003T3-2D; Sat, 23 May 2020 05:13:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMTf-0003Sf-6V
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 05:13:45 +0000
Received: from [127.0.0.1] (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 933235E69;
 Sat, 23 May 2020 07:13:34 +0200 (CEST)
Date: Sat, 23 May 2020 05:13:31 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Alexander Couzens <lynxis@fe80.eu>
Message-ID: <318bb824-116a-4307-814d-78acfc55c55f@localhost>
In-Reply-To: <20200522153626.1398980-1-lynxis@fe80.eu>
References: <20200522153626.1398980-1-lynxis@fe80.eu>
MIME-Version: 1.0
X-Correlation-ID: <318bb824-116a-4307-814d-78acfc55c55f@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_221343_388982_2F872838 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] musl: use official release tar
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Alexander Couzens <lynxis@fe80.eu>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

May 22, 2020 17:37:38 Alexander Couzens <lynxis@fe80.eu>:

Hi,

why? = missing commit description

> Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
> ---
> toolchain/musl/common.mk | 9 +++------
> 1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
> index e1354f263510..6a595771086d 100644
> --- a/toolchain/musl/common.mk
> +++ b/toolchain/musl/common.mk
> @@ -11,12 +11,9 @@ PKG_NAME:=musl
> PKG_VERSION:=1.1.24
> PKG_RELEASE:=1
>
> -PKG_SOURCE_PROTO:=git
> -PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
> -PKG_SOURCE_VERSION:=ea9525c8bcf6170df59364c4bcd616de1acf8703
> -PKG_MIRROR_HASH:=6975c45b9bfe586ac00dbfcd1b1a13ab110af0528028ab3dee03e23e2c0763e5
> -PKG_SOURCE_URL:=https://git.musl-libc.org/git/musl
> -PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
> +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
> +PKG_SOURCE_URL:=https://musl.libc.org/releases/
> +PKG_HASH:=1370c9a812b2cf2a7d92802510cca0058cc37e66a7bedd70051f0a34015022a3
>
> LIBC_SO_VERSION:=$(PKG_VERSION)
> PATCH_DIR:=$(PATH_PREFIX)/patches
>
>




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
