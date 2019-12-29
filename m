Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8696712C266
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 13:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SFF5h1xKwedCfHYKy4CXvTGbz5XP+D4pDpWGHPYxLjM=; b=sqNtQsnt5GnGXPH4Ds5rou2rV
	PSuIoDGIdcKbnaxIJ6RsqLSxNEy3Q0NkEt1Pq1sxFrtwhdZMrPqDDit+PpEsK7Tp1OA7mQrULVWFM
	hCkUHALSHVnulsX5MRhvCBKuKnc5+YJgLWMQSNWyoSoSorVsXaohployb08vAEtHVOnyZlUBKaCqh
	+YcMc6onS9Bp63qdKZ9WzMX3YzAf8mE9vBUpoltefxAegsGflClW7K/lb/xAZ4VgRpQ3ACndNZpIQ
	IGD3QKBaSChL2xplmnoGWINL5cLBSsPuMv2OXSun14Sd+QQzLez4R9Bgm2L5rG2OEdjkYsn96A1Ge
	k4yyzR1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXRd-0001Lp-RL; Sun, 29 Dec 2019 12:13:17 +0000
Received: from welho-filter1.welho.com ([83.102.41.23])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilXRV-0001Kg-AV
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 12:13:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter1.welho.com (Postfix) with ESMTP id 9DFFD1594D;
 Sun, 29 Dec 2019 14:13:04 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter1.welho.com [::ffff:83.102.41.23]) (amavisd-new,
 port 10024)
 with ESMTP id QbNhDRqZpXl2; Sun, 29 Dec 2019 14:13:04 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 04ECB2A0;
 Sun, 29 Dec 2019 14:13:01 +0200 (EET)
To: =?UTF-8?Q?Petr_Nov=c3=a1k?= <petrn@me.com>
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 14:13:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_041309_530059_5F4ED334 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.23 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsga2lyam9pdHRpIDI5LjEyLjIwMTkga2xvIDEzLjQ5Ogo+IEkgYW0gbm9ybWFs
bHkgYnVpbGRpbmcgbXkgb3duIGltYWdlcywgYnV0IHRvIG1ha2Ugc3VyZSB0aGlzIGlzIGVhc3kg
dG8gcmVwcm9kdWNlLCBJIGhhdmUgcmVjcmVhdGVkIHRoZSBwcm9ibGVtIHdpdGggdGhlIG1vc3Qg
cmVjZW50IHNuYXBzaG90IGJ1aWxkcyBhcyB3ZWxsLgo+CgpDYW4geW91IGJlIGV4cGxpY2l0IHdp
dGggIm1vc3QgcmVjZW50Ij8KWW91IG1lYW4gcjExODI5LWUzZTkzOWQ4ZTYgaW1hZ2VzIHRoYXQg
Y29udGFpbiB0aGUgbGFzdCBmaXggZm9yIGxpYnVib3g/CgoKUHMuIEp1c3QgYXMgcmVmZXJlbmNl
LCBzbyBmYXIgSSBoYXZlIG5vdCBzZWVuIHRoZSBzeXN1cGdyYWRlIHByb2JsZW0gbXlzZWxmLiAK
SSBoYXZlIGFscmVhZHkgc3VjY2Vzc2Z1bGx5IHN5c3VwZ3JhZGVkIGF3YXkgZnJvbSByMTE4Mjkt
ZTNlOTM5ZDhlNiB0byBhIAoxOS4wNyBidWlsZCBib3RoIG9uIFI3ODAwIGFuZCBvbiBXTkRSMzcw
MHYyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
