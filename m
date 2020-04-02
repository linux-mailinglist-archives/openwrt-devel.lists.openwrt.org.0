Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78E19CAB8
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 22:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rR4ABk1URetXxcFlVzHE24VaLFycyjRACSCXhTPsXho=; b=kyHkjV8qGH5IdMkfF5VB2Tut+
	CiqkTE5wGygT6hWph//HCWVr9cBqy3EITKr6+yaobh0odFeJ2KLUlOz2yz3nPWbKM74DBozhFR0Fv
	J3ynhV1sqrThvc8ps1WbAKufjA6+Hdz+Pagl1dqEk+h+VUR8LPEo6ZIa8OLriA5gGS1wun3+Hjsic
	klMSgtT3ZkykTf+fIAm632sMZRl11W0pe1b9l0HfLIJ2TNkBtcpkDJI4PuXmYeFlFjaEhjZ9Bb23B
	UcVk1FpCS+/cql4bqibijewnnYV4C+bx3SdLzx4Ehzmzyf0s3MqqQWBYNQXaJrdXEKHrk8QO3wQmc
	yDPSJM+lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK62X-0006ed-P9; Thu, 02 Apr 2020 20:02:13 +0000
Received: from welho-filter1.welho.com ([83.102.41.23])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK62N-0006c8-Iw
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 20:02:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter1.welho.com (Postfix) with ESMTP id A96C115A18
 for <openwrt-devel@lists.openwrt.org>; Thu,  2 Apr 2020 23:01:55 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter1.welho.com [::ffff:83.102.41.23]) (amavisd-new,
 port 10024)
 with ESMTP id e58DowLM0BBf for <openwrt-devel@lists.openwrt.org>;
 Thu,  2 Apr 2020 23:01:54 +0300 (EEST)
Received: from [192.168.1.180] (87-92-33-63.bb.dnainternet.fi [87.92.33.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 7D9ED2326
 for <openwrt-devel@lists.openwrt.org>; Thu,  2 Apr 2020 23:01:53 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <20200402195359.51545-1-mail@david-bauer.net>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <da920234-c569-d00c-750d-d1997fd6d091@iki.fi>
Date: Thu, 2 Apr 2020 23:01:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200402195359.51545-1-mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_130203_786219_37810B77 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.23 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RGF2aWQgQmF1ZXIgd3JpdGUgYXQgVGh1IEFwciAyIDEyOjUzOjU5IFBEVCAyMDIwOgoKID4gLUtF
Uk5FTF9QQVRDSFZFUjo9NC4xOQogPiArS0VSTkVMX1BBVENIVkVSOj01LjQKID7CoCBLRVJORUxf
VEVTVElOR19QQVRDSFZFUjo9NS40CgoKUGxlYXNlIHJlbW92ZSB0aGUgS0VSTkVMX1RFU1RJTkdf
UEFUQ0hWRVIgbGluZSBhdCB0aGUgc2FtZSB0aW1lLgpJdCBoYXMgbm8gcHVycG9zZSBhZnRlciB0
aGUgc2FtZSB2ZXJzaW9uIGhhcyBiZWVuIGFkb3B0ZWQgYXMgdGhlIGRlZmF1bHQga2VybmVsLgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
