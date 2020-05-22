Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A181DF1E1
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 00:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kNrbJbYgGCj5M09DvNuEI3bpX9ckxcAKqiTm2kcD/AE=; b=aGUvaDhT3twIXb
	uuUQSrIGInCBt+VrVh6hcJ04BN+OMAjij7Nf9kOYXaw1UhZrw9TddIW/Yqocu+LiNVGpTtTxLztNV
	Pl+ZBPn8M4eh368tsaYMEGpPpp0FGj3Sulw1gi8FjoqsgRoY0HFqGyZIKW3mSXgrEPwf4FmFVuj+J
	3hfzbWSOgy9txL8UpNHJzIrNsP/mfUjwf+xQc15GJndK+XRcBmDKMDpfVjcF+1/ayk6LhkYoo5Gea
	Qbp+mLE+QwUGMgURHx8jQ5u9iKevLXcqGdUyYn2gy5KuuWZBrF2El5groLQtPSzhlK2lA4aWqX/kK
	eQ9kgWuseYuI6eY/92aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGFX-000598-6V; Fri, 22 May 2020 22:34:43 +0000
Received: from vps.pervices.com ([64.34.111.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGFN-0004tH-Jq
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 22:34:35 +0000
Received: from 104-195-201-185.cpe.teksavvy.com ([104.195.201.185]:36278
 helo=[192.168.128.98]) by vps.pervices.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <reza.m@pervices.com>) id 1jcGEh-0000GW-J6
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 15:33:51 -0700
To: openwrt-devel@lists.openwrt.org
From: "Reza M." <reza.m@pervices.com>
Message-ID: <ee4329bf-d1f8-1500-5642-23d07e3a89ed@pervices.com>
Date: Fri, 22 May 2020 22:33:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vps.pervices.com
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - pervices.com
X-Get-Message-Sender-Via: vps.pervices.com: authenticated_id:
 reza.m@pervices.com
X-Authenticated-Sender: vps.pervices.com: reza.m@pervices.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_153433_674565_49117D10 
X-CRM114-Status: UNSURE (   3.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] LS1088ARDB Firmware Image
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

I have been working with the LS1088ARDB and have found some issues with 
the default firmware image. Only one network interface is set up on boot 
and the documentation to get them all up and working is sparse. I have 
figured out how to get all of this set up and was wondering how i could 
contribute. Would a DPL file or a start up script be more beneficial?


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
