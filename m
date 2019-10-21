Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3944DF5E7
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 21:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kg2j4+Gfr6Wy9s935kv/bLqWV5Wy7AL5rC8gzZyXvK4=; b=mGgyn+hIeI8xg30W4YpOfWsTc
	OwtxSTJQ76ywftJz99g9ShigiVlNWqqfCqFrRuDvH88JQlppmRQ43iGirLACui2+9VPmZNS8ZLa7a
	Jh3s164Le5hqEERbtE4/FaiWZiNDbfiAAfnDK520wO+4gT2E3nv8Uwa+Sb4SGzbb9G7c94vuTMWUD
	/AcW8xQrNm/bYPBYVUw7MltxGcjAwNp7Qmo4E3iV2qBAF9G5Yew6pfXG4+dASQmeqgWDXxsUJVel8
	LenboXXVgqddfTa8+W1Ii9yVX8IPIlO3Wk9sqFTytbkDDJPp58HhJ7GGmoiOyFrdzhDsuVSNmr+KA
	FJlCeU2dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdGe-0002G4-97; Mon, 21 Oct 2019 19:23:00 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdGV-0002F8-3t
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 19:22:52 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMdGT-0004Fr-Ja; Mon, 21 Oct 2019 21:22:49 +0200
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
References: <20191021191308.16311-1-mail@david-bauer.net>
From: John Crispin <john@phrozen.org>
Message-ID: <d3756443-be9b-d090-03ef-b478e62ed002@phrozen.org>
Date: Mon, 21 Oct 2019 21:22:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191021191308.16311-1-mail@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_122251_311163_228B5331 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mac80211: add rtw88 driver
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

On 21/10/2019 21:13, David Bauer wrote:
> +config-$(call config_package,rtw88) += RTW88
> +config-y += RTW88_CORE RTW88_PCI RTW88_8822BE RTW88_8822CE
> +

why not put it all behind config-$(call config_package,rtw88) ? of 
course kbuild will "is not set it" if the prior is not selected but you 
could be explicit here. its bikeshedding but I was wondering if I am 
missing the obvious here.
	John


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
