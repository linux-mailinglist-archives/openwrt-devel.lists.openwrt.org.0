Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AE51E1DC0
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 11:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BaElyYb3bQaJhqp7+RdIPNNw4kFiTTGRRsPAejSV2j4=; b=FDvwgSF0ztkOvMgnj4UGVDvwU
	OfylfIEVQJcJrhCtwoakBA1qdLa7WFipObT3TKuIzgQp5OooyTQboSHRgVG8GvHfYQ8W9bN0I+Z4r
	AP1o3o7m8EnB76Vb/aE3oYjVHZLfJtO6tuK+N8wcvg0ovzED83jvYh3ITrL4xhGuXARxduYv+hzmY
	22MHVyHZ1K3/KQXbDCF2D0tLnzpnq2yUwrLOsqHknhML4dTsksRLviHFjFn+xKtpn+j9/7+dDWIHT
	DYxtRUm1MzOB5xMm+HQWH2ivHr+WWkPxyBDWK4SzMoTexXpgc+BdvOhW48mAmsxicUgB+PBuYvj0L
	k4BgOMywA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVSk-0004Ai-Hs; Tue, 26 May 2020 09:01:30 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVSd-0004AB-Gj
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 09:01:25 +0000
Received: from [2a04:4540:1400:c300:2d8:61ff:feed:60f5]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jdVSZ-0006r0-Ni; Tue, 26 May 2020 11:01:19 +0200
To: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
References: <20200525144639.10421-1-john@phrozen.org>
 <c046d677-fdbb-dae2-cadd-41b98c6d3383@ironai.com>
From: John Crispin <john@phrozen.org>
Message-ID: <6c40c523-ec80-3f3f-c34d-d8109ab19f50@phrozen.org>
Date: Tue, 26 May 2020 11:01:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c046d677-fdbb-dae2-cadd-41b98c6d3383@ironai.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_020123_713319_AEDC0177 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: add support for wifi-station
 and wifi-vlan sections
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

On 26.05.20 10:07, Vincent Wiemann wrote:
> On 25.05.20 16:46, John Crispin wrote:
>> With this patch applied it is possible to use multiple PSKs and VIDs on a
>> single BSS.
> 
> Nice! So hostapd supports different keys for different stations now?
> Did you test it? This is particularly interesting for me as I wanted to
> use different PSKs for different 802.11s mesh links (for trust on first use).
> But as far as I could see hostapd was not able to use per-station PSKs at
> that time. If yes, could you try to cover that case?
> 
> Best,
> 
> Vincent
> 

I have only tested AP mode so far. it does not look like wpas supports 
this feature.
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
