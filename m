Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EE4DF783
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 23:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K3KyTcwKkqM0zFcE+Mt1Sczt7mM2G0/r986K5xLyjf0=; b=ojIzeRerwnlRg+F9jE9Sj8S8n
	JrhlfPYmYWvIwDna9/CnnwuMP2IH6eHJfP9HNh2y1jYIgxRGKBrm2JFaD4e6a0EwC1bUo88kRtxBH
	2s9cjGTKkBPSvpxwATQSOt7mqvZgBIuDXvKjgzztkl4I4G7ys+D1bBxTOK9CiQuzKXK7BLTjkFTwm
	DJEGTOX8GC9aSSxg5hGKMvrrSFwsvHYio3hBr0eTY8ubUb+R26MMa5RvAzIQHOYsZFFuBSrbcHr1h
	DGTuZUecuz54uUa9u3plDjG5x+AxVHySFeqmfnA/R1FTZsdtU86F4n5//Z3y6Qq1IOPDSEU/z9Jc5
	Dl7qLQdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfPT-0006HO-TT; Mon, 21 Oct 2019 21:40:15 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfPM-0005ie-09
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 21:40:09 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMfPJ-0000In-Lr; Mon, 21 Oct 2019 23:40:05 +0200
To: Hauke Mehrtens <hauke@hauke-m.de>, David Bauer <mail@david-bauer.net>,
 openwrt-devel@lists.openwrt.org
References: <20191021204712.30307-1-mail@david-bauer.net>
 <02ce7a5c-8c14-ccf4-141a-7440a2a09944@hauke-m.de>
From: John Crispin <john@phrozen.org>
Message-ID: <087f1edb-5a45-9047-caee-11d8d6d4fa39@phrozen.org>
Date: Mon, 21 Oct 2019 23:40:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <02ce7a5c-8c14-ccf4-141a-7440a2a09944@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144008_212340_6931B53F 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] mac80211: add rtw88 driver
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

On 21/10/2019 23:20, Hauke Mehrtens wrote:
>> +define KernelPackage/rtw88
>> +  $(call KernelPackage/mac80211/Default)
>> +  TITLE:=Realtek RTL8822BE/RTL8822CE
>> +  DEPENDS+= @(PCI_SUPPORT) +kmod-mac80211 +@DRIVER_11N_SUPPORT +@DRIVER_11W_SUPPORT
> Please add +@DRIVER_11AC_SUPPORT
> 

V3 here we go ....

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
