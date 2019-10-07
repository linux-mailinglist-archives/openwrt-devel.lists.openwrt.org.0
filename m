Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B218FCDB7D
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 07:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0brIlvm3iEFE5bETEsaIVBa6s1P09xO2xG40DqqPJw=; b=hmQzHvTc7vE1vE
	tay2mwRFmWnryi3jd3xGwD+WjpsjKLrM6dYD5kJhLSCfLxZ+o6M36wqPC3NDRvK6mDJdVuaW73+QK
	YRqsHsdIiXJSLV/qkG8fRLr9gyVrEmlvVU5ZDkEfWslFn0wH7pvGdnmD8aQfWNtkFCGf8dmifB3Uu
	g0+h9uNCGtWjis6f80xew7X07oNlUNqf3YL2OEwYK6TArl20eQpHm+9BRJtOqUakdEbRalqqJlVbw
	/pAtPCIIvajt6xlik3IAfjxdGqn3Iy1aqgEbokWndKjjsWwacrx3KqqHuiqZSIJNhdTFb7/vVKgrL
	C0l52IdcDhkaE+ghxonw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHLk8-0003Id-J4; Mon, 07 Oct 2019 05:39:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLk3-0003IQ-DQ
 for openwrt-devel@bombadil.infradead.org; Mon, 07 Oct 2019 05:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZJgLLzENLMNU99jtKYIyzUk/6Mmw4/oAqhafnNaHVA=; b=SjOifyNNgm4Lo39us7lfxr0M+J
 WPXsawvSqh3Gl6kicawjQyxbV2UHGpZPXmBTlmuyWmZKLhbnerC6ujt7eKBl0kWGVq1D+eo4ZC8le
 CRiZdeaA6+B0XXo4yoKlxrJm8COUn9LC2CipMlskWR5zwfKrqYLqjtGzfnyD8R/l5HHSM7v03td4L
 AJ7bZ0F3ykfYMQTFDMg4crAoPyKJ1laUZXhnnzo0qNUFH6K2HLWy+85TQX6GVr5pcSi0BSv+pSEKI
 rT+dEpeZC8v6us7wj5yV8ENQYmds5j1Vs0ubRiJHs7RsNA5zgd5DdjU17UXysDnDnZ4CG8JQNUCJX
 VEqvxe8w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLjz-0006h0-34
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 05:39:28 +0000
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1796B200004
 for <openwrt-devel@lists.openwrt.org>; Mon,  7 Oct 2019 05:38:43 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Message-ID: <7b533443-c8d0-69ac-66fd-4602c423fade@aparcar.org>
Date: Sun, 6 Oct 2019 19:38:41 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] ath79: ubnt factory images with attached signatures
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

Aloha,

I'm currently working on the reproducibility of OpenWrt snapshot images 
and packages and came across the following problem:

Some of the ath79 images have a signature attached to the factory images 
which is pointless as stock roms wont evaluate those anyway. However, as 
these factory images are padded after signature attaching the fwtool 
fails to replace them. An example of the situation is here[0].

This seems to be the case as the factory images simplify perform 
modifications on top of the sysupgrade images.

I'm not familiar enough with the build process, so if anyone would be up 
for help please let me know!

The affected profiles are

- ubnt_lap-120
- ubnt_nanobeam-ac
- ubnt_nanostation-ac-loco
- ubnt_nanostation-ac

Best,
Paul

[0]: 
https://rebuild.aparcar.org/SNAPSHOT/ath79/generic/openwrt-ath79-generic-ubnt_nanostation-ac-squashfs-factory.bin.html


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
