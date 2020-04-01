Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD3019A9C2
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 12:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfG81lgIn4PtCG/xjpQRKsh7AMV+530dDtitTDTuuwo=; b=gXF2LVc7daopks
	t2pqSaMZyF6I51MT8m6vMCXPKfrubx3csSMZW0NPap4VDxobOXAga/YYorgsAEEkw+B5zqbdpUP7s
	GxmMght48MLYiBfuHUUYb3VY/gQBIMnJ4AwbZkil4mbJT86W0ZtndsaQrrKvgquQfOA/sA4sE2YP1
	f1cFmPIHrevz1vIDh9vX62juFblown+/8HD56yI3kBmNVt/SI0WTFtYTNGhqdvx5wmTlYA7qiwBOA
	U/CvCUF1qbbf7JoIfd/1OkaBGhZB8e3f83WwKZA5u8iR3xB/KO87J0eDCf7A019zN8BwXXgBwJhfk
	EaYeOl0gJzxRZ8Y88wJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJape-0004zT-Mv; Wed, 01 Apr 2020 10:42:50 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJapQ-0004w9-0E
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 10:42:37 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 031AgUej025867
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 1 Apr 2020 12:42:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585737751; bh=pQ6DzsoF/c3s9cpIrwNKBM7s6R/V/sAhw/Ltc8vweSo=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=RfGYeI/2vfQ0YO2zbrqa96TxdM8ZFYVdNl6gdAHw324IFKPHTjoPgw6GkUPS0RLAD
 NLQNeuGCPLNhu9ULVkb3C8zPklmK2tJMIsFA/NlDkB4AuHN1C1ftEAy/d7sGuviABm
 3UqL28f6QNy3rDNZIsaGk/QERS0oY3EjoojJCBaM=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jJapK-000808-6p; Wed, 01 Apr 2020 12:42:30 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Paul Spooren <mail@aparcar.org>
Organization: m
References: <20200331232009.1948083-1-mail@aparcar.org>
Date: Wed, 01 Apr 2020 12:42:30 +0200
In-Reply-To: <20200331232009.1948083-1-mail@aparcar.org> (Paul Spooren's
 message of "Tue, 31 Mar 2020 13:20:09 -1000")
Message-ID: <87o8sb32sp.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_034236_379133_303129E9 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Paul Spooren <mail@aparcar.org> writes:

> -define Device/linksys_wrt1900acv2
> +define Device/linksys_cobra
>    $(call Device/linksys)
> -  DEVICE_MODEL := WRT1900AC
> -  DEVICE_VARIANT := v2
> +  DEVICE_MODEL := Cobra
>    DEVICE_ALT0_VENDOR := Linksys
> -  DEVICE_ALT0_MODEL := Cobra
> +  DEVICE_ALT0_MODEL := WRT1900AC
> +  DEVICE_ALT0VARIANT := v2

s/DEVICE_ALT0VARIANT/DEVICE_ALT0_VARIANT/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
