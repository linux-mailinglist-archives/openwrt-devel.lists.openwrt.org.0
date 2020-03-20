Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7B118CF3A
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 14:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fxi+HxTREZrj6I4/mOmsO77DlsEZXeYm/LFLDpSQHNo=; b=h0afIL8QxBTo+I
	ZZN7kD0aamR5uleOZ+EHBKVSiSdlyaBb6KM5mD/yq/S2W86P00ds3c3P7twRjVI2GM9k4C2XqN2rL
	nAR+pPNRzPWoRmPUXhZWE1eDrIyAWMPtbTQMwVkbdigxrej+EGTbVFy6nNV2NuxbqSY5dNes4lAT7
	dp0UaEd8dwzyDiLWsgwXftiQOfR63lWEFdB85w9k6ybaObD6ogSJ2gHcmXMsPEJ/aAW7K6QFaL8gJ
	AH8E8YEJjh3CxJit1BjoWw/WMvler4wKNwaYFSO3OJM8pGyAekbZXXR0jlCjMutK/zHFF1tt9UjJC
	mGiio0ggLUDk4/JH2BrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHvS-0001C7-Mi; Fri, 20 Mar 2020 13:43:02 +0000
Received: from smtp-out-60.livemail.co.uk ([213.171.216.60]
 helo=smtp.livemail.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHvI-0001Bq-1N
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 13:42:53 +0000
Received: from webmail.prositehosting.net (webmail.livemail.co.uk
 [213.171.216.229]) (Authenticated sender: dermot@mcdonnell.ie)
 by smtp.livemail.co.uk (Postfix) with ESMTPSA id 814DD2605CC
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 13:42:50 +0000 (GMT)
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 13:42:50 +0000
From: dermot@mcdonnell.ie
To: openwrt-devel@lists.openwrt.org
Message-ID: <7f331482653d18031cc0a46487700cda@mcdonnell.ie>
X-Sender: dermot@mcdonnell.ie
User-Agent: Roundcube Webmail/1.3.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_064252_221278_58EE9442 
X-CRM114-Status: UNSURE (   2.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.171.216.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [213.171.216.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] Testing Kernel 5.4.24 on Lantiq XRX200 SoC - BT
 Home Hub 5a
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


Just to report I did a build of trunk and flashed it on my BT home hub 
5a today. Seems to work fine except when there is a USB stick inserted 
at boot. In that case I do not get an IP address at all although the 
device boots and WiFi AP comes up.


Greatly appreciate the good work!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
