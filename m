Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01DE3DF9
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 23:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XQxaNTlRIcul1uYyKalHwlSVbZ2aX7nutyjd5oQYA0E=; b=KG3dR9mSt9gaEt0nA1tIT/HeB
	Q+kywXkqiXKFQB/axph+brHD0VHbB2jZTc5Zmq0EUXRLB1GIgV9L5FTgjEOKnImQ1ICUrj5626Tmj
	Nnx1U7yLmYtGYlEchRf0UQMDQT2qxDP6FzKwr1B26UD8y8dzlLmRTJlxccmtLK2iTQD584P3OjVGb
	6xwGBfdAu5WnAmX9chttCgmpFQ/11397jwrO7sdVa3COhcg5hpAeS7VrpCbNJC3AcGOI19yFJ2ijr
	dmWNy25uZ8XVH3DX+mWsmprgI1CFaXV/2yAGRzJHFAGQKxzT4qNTepYAQ32ZsQGSsuB0qBKP0NpaN
	tRCO0LHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNkMC-0006qa-Nf; Thu, 24 Oct 2019 21:09:20 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNkM5-0006qC-I6
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 21:09:15 +0000
Received: from p5dcfba22.dip0.t-ipconnect.de ([93.207.186.34]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iNkM3-0003fL-5R; Thu, 24 Oct 2019 23:09:11 +0200
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
References: <20191024131324.302958-1-mail@david-bauer.net>
From: John Crispin <john@phrozen.org>
Message-ID: <f12f0095-0be6-7c34-0972-1c1f2f83d68a@phrozen.org>
Date: Thu, 24 Oct 2019 23:09:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191024131324.302958-1-mail@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_140913_762661_FC13F749 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: disable delays on AT803X config
 init
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

On 24/10/2019 15:13, David Bauer wrote:
> ++	// Disable RX delay
Hi,
please use /* comments */
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
