Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883F114FA9A
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 22:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rEQGprbHbbqTL57JndmMqNOyVFHN+KtJfea8AQamUd0=; b=iDYZ1JeOtvV02UwZ5o5dsrlk/
	sDoAlMHeyO4KhWqGSXeCTuaQVMKVZOPb9NWoOBUduRsCaNa7QjR11cE7UHqhK0f880Gx3mCzFGxM1
	CSUwplv1mRerb/G33YcITtnK/JHB+xkTFLpoTpjlvNQWTqrD4TVauLVsxE1imX9wnS6I4cTENMjgi
	P5+tn2t3dtxpwk7ITSExN6eXVCWCVd+L07nFMo44xFSUziH79f0/FbljhUOX+vu3Fo2lMjhqi3W7z
	lkzyh2FnkYsJHXtG+KvLBS+ZV2hCqVRJxT03sJX4AtoPdMWmHaKS/j8gIRiVvVrF16IqR+ul9Glc2
	60XGv4a1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixzvq-0006EQ-2p; Sat, 01 Feb 2020 21:03:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixzvi-0006E9-DQ
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 21:03:51 +0000
Received: from [149.224.208.42] (helo=[192.168.178.34])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1ixzvc-0002QJ-5n; Sat, 01 Feb 2020 22:03:44 +0100
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 openwrt-devel@lists.openwrt.org
References: <20200201162500.35499-1-ldir@darbyshire-bryant.me.uk>
From: John Crispin <john@phrozen.org>
Message-ID: <61c4b72a-534a-c0e3-5e26-a9a440db78fb@phrozen.org>
Date: Sat, 1 Feb 2020 22:03:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200201162500.35499-1-ldir@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_130350_610433_D68ECA48 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] instance: Add 'mustjail' attribute
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

On 01/02/2020 17:25, Kevin Darbyshire-Bryant wrote:
> +	bool must_jail;

can we name this requires_jail ?
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
