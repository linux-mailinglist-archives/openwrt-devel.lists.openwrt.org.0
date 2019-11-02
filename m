Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C28AECF02
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 14:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVcWkrxPaxgGCt+/44Y8iG+mCNPgjxrWUz+ZUIKWWDk=; b=r74cNxtSq2cDU6
	Xk4nzpz3tCI6jQlEHLdIprrLAsByLW0j8G/lLQ0sST4pJ95CH9Mszy1vUBjaN5TrioBLmFdKGIr4R
	Drm8yuGLZV/8I3qg7bkhkje3ORg+5tK5qmaptq4xfLMfgDCfc6jQBpA6rlnPMuOS0wWleLr+NpY7O
	jYh8MTpR9pmznuApl2tKKY7p1fBIic4elXgoVvZbEHbt/gEuP8blUl2obMVlvbc9zUmGfSiHAlqPM
	vEZvAr1z2uu6saRPZOzOQ9eADyDRHjAN68ELBh0M8HS6PCBr1ZDfMnVQn+4wNvFNZWO79+4B45JJd
	SCFYh4Ud8HBTQBme5v7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQthQ-0004MR-TP; Sat, 02 Nov 2019 13:44:16 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQthH-0004K0-KV
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 13:44:09 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 02C3057764; Sat,  2 Nov 2019 14:44:03 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id B5AF25775F
 for <openwrt-devel@lists.openwrt.org>; Sat,  2 Nov 2019 14:44:03 +0100 (CET)
Received: (qmail 45985 invoked from network); 2 Nov 2019 14:44:03 +0100
Received: from unknown (HELO ?192.168.2.103?) (jo%wwsnet.net@93.209.176.45)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 2 Nov 2019 14:44:03 +0100
To: e9hack <e9hack@gmail.com>, openwrt-devel@lists.openwrt.org
References: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Message-ID: <85b37900-ed96-c4ae-98b4-4d1afe273065@mein.io>
Date: Sat, 2 Nov 2019 14:44:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_064407_822428_01D6D041 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

please try to find out which procedure is crashing rpcd by testing the
following commands:

- ubus call luci-rpc getNetworkDevices
- ubus call luci-rpc getWirelessDevices
- ubus call luci-rpc getHostHints
- ubus call luci-rpc getBoardJSON
- ubus call luci-rpc getDSLStatus
- ubus call luci-rpc getDHCPLeases

The one that hangs/times out is the culprit.

~ Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
