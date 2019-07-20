Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB586EE90
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 11:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qr0iW5L7RNkjA7Wj/A3UVnmr/NYyKza9mB5rfsBCD04=; b=N6GW6MIID8HTFQ
	nJR+R0CDNXY0CqljVGGVhwUkxMnaXV7osi4Zsx0lkCuGqr5MW1NU5icA4mP7cHxbTXcRIuyDrA25+
	qa2oTxoCpWEIHiYMMZLkeeEG4Q1SXTNqFM8PcIkxVepyu9Gsr7gsdp0aGH95FnExBpA/FPW772DKn
	axgFvSCFodA5qLCER0Y50JZ2XunFeNfJL5NTDTMFv1IrFym2p6xARwGVIsFsaNqUbOaqiklccob92
	MoqaWoBJzjufgHwmhBqjSGXsSE+kPPjjQSViXwY/JkJEuBCB2NCVdEZ2s1XyL9Z7xdxPj3zMlKOSD
	F6rQC+x3pvkKcYKkYYcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holUY-0000wX-RB; Sat, 20 Jul 2019 09:17:22 +0000
Received: from smtp.iszerviz.hu ([213.181.195.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holTv-0000vV-0x
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 09:16:44 +0000
Received: from [192.168.42.20] (catv-86-101-160-251.catv.broadband.hu
 [86.101.160.251])
 by smtp.iszerviz.hu (Postfix) with ESMTPSA id 7606A44340005
 for <openwrt-devel@lists.openwrt.org>; Sat, 20 Jul 2019 11:16:30 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Mikael Bak <mbak@fxnet.hu>
Message-ID: <54fe7f50-882a-47ef-d638-15cc61e584a9@fxnet.hu>
Date: Sat, 20 Jul 2019 11:16:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_021643_232251_C65452BD 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.181.195.26 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Old Stable Release
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

Hi,

I noticed that on the openwrt front page 17.01.6 is linked as the latest 
old stable release, but both release notes[1] and download directory 
exist for 17.01.7.

Is this on purpose?

TIA,
Mikael


[1] https://openwrt.org/releases/17.01/notes-17.01.7

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
