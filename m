Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C90197050
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Mar 2020 22:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ax6dkmoKJF6SuHesyb2HZ/YlcbhuRUmG6+L4ViFJYNs=; b=UD4c6k35Eaq2c0
	t9qG+UHANxicQbfegK3SvDA+webUcpuSx1FICyAL/TURDPZQerNsOsn7vMmoH8vZzqNj4P64vUCiT
	i4o8iQj/XPiTt7GtXzRBWxxa1l3KTV0x+dDOcGxyYV7Ehak11yufwubd3RMVa4eYos+DYBKh0Wa7a
	gnZ2tuCHDP5ZeHz+a6ZwD2Eos5BOGNjJHMfETAcT4M5pLy+rOa+VixGKpORatEOO8I0RhFJfO2thv
	Tdjw+Q0HkfIC9twiCyyyWlAD1cckGOKclFwv9uKsNgyrcurUdn5tvZ4x3REOWouZUfyghwrc60pHa
	/3IMg5i/nvqexTVrNR2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIefn-0004dd-M1; Sun, 29 Mar 2020 20:36:47 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIeff-0004d0-0Z
 for openwrt-devel@lists.openwrt.org; Sun, 29 Mar 2020 20:36:40 +0000
Received: (wp-smtpd smtp.tlen.pl 36921 invoked from network);
 29 Mar 2020 22:36:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585514194; bh=ZMsshdLoJpERr1E2WvWH+irHDaKZUvj22eca9fbnnfY=;
 h=Subject:To:Cc:From;
 b=dKHZ5LYphsQ75W4F6w5XAm7RvvXnpkQRAqhJ0mNNjIRtBiJFJWDbEAq35lNQK6NPu
 G9TUba2bTxbLSUGi2uR7EmJev5Vxatr+mttURQ+pP9c/AVwrdI+5WpCufxLFGE2qD0
 fa78G4fDCXr5prolVDToAlUIVnSAuQVQybnFXfvc=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <jow@openwrt.org>; 29 Mar 2020 22:36:34 +0200
To: Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
References: <20200318180413.409555-2-tomek_n@o2.pl>
 <20200328125203.9189-1-ynezz@true.cz>
 <6014b3df-333b-95f1-8622-2f869c6b9a62@hauke-m.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <4ea78985-726b-d3b9-caeb-274ebcc05ed2@o2.pl>
Date: Sun, 29 Mar 2020 22:36:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <6014b3df-333b-95f1-8622-2f869c6b9a62@hauke-m.de>
Content-Language: en-US
X-WP-MailID: fa870d83a994aa43344596b1888aa233
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000003 [4VD2]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_133639_378584_ECA48EA6 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Merged: tegra: correct cpu subtype
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
Cc: Jo-Philipp Wich <jow@openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDI5LjAzLjIwMjAgb8KgMjI6MzAsIEhhdWtlIE1laHJ0ZW5zIHBpc3plOgo+IE9uIDMv
MjgvMjAgMTo1MiBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPj4gVGhhbmtzISBNZXJnZWQgaW50
byBteSBzdGFnaW5nIHRyZWUgYXQgaHR0cHM6Ly9naXQub3BlbndydC5vcmcvb3BlbndydC9zdGFn
aW5nL3luZXp6LmdpdAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCj4+Cj4gCj4gSSB0aGluayB3ZSBzaG91bGQgYmFja3BvcnQg
Ym90aCB0byAxOS4wNywgYnV0IHRoaXMgd2lsbCByZXN1bHQgaW4gYSBuZXcKPiB0b29sY2hhaW4g
YmVpbmcgY3JlYXRlZCwgaXMgdGhpcyBvaz8KClllcywgcGxlYXNlIGJhY2twb3J0LCB0aGUgY3Vy
cmVudCAxOS4wNyBpbWFnZXMgYXJlIGJyb2tlbi4KCj4gCj4gSGF1a2UKPiAKPiAKLS0gClRNTgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
