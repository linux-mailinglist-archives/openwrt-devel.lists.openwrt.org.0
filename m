Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB67CEF213
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuEtFFIoyTfLVBJLvZ2OQQwH7KaMffvHHO5C98O8W+k=; b=CE5ejOUV3Uuk6h
	N7YvXrVggJAyYVfoIHiV71187YKw4U8Eb09hLXA7Et6EreMrvWmTX48AcsUt1MiRLFnIlTybWgx6v
	WIl++xFzg/je2CNsfA6S49WJWmKseGXPcMMZ4nvzelKziBhxTlVpUDXpB+iD8EiJeeP0C96HRNfuA
	ERv50q+LMWGkcFUHd2bolTs96g6hSZ0D5vu9xNgblzeICjXkQgRZj38K+bHmHu+jJfk5TtmmaKdWd
	Qi74JH3teJB5Do2HblWFsXY2V7vnxmJh2fSg1eNOuyLOzmZgMxRQa1VCZwGf/Up0aiPY38lXk2l3o
	3FujOza2pSrQyz57bBnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmrQ-0000ja-NJ; Tue, 05 Nov 2019 00:38:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqM-00085m-UR
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 809C24D7E;
 Tue,  5 Nov 2019 01:37:09 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b192e621;
 Tue, 5 Nov 2019 01:36:59 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:42 +0100
Message-Id: <20191105003657.16540-4-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163711_127309_D3537CED 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 03/18] tests: shunit2: make it working
 under CMake
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

dWNpIGlzIGJlaW5nIHBhc3NlZCBmcm9tIENNYWtlIGFzIGVudmlyb25tZW50IHZhcmlhYmxlLgoK
U2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiB0ZXN0cy9z
aHVuaXQyL3Rlc3RzLnNoIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCiBtb2RlIGNoYW5nZSAxMDA2NDQgPT4gMTAwNzU1IHRlc3RzL3NodW5pdDIv
dGVzdHMuc2gKCmRpZmYgLS1naXQgYS90ZXN0cy9zaHVuaXQyL3Rlc3RzLnNoIGIvdGVzdHMvc2h1
bml0Mi90ZXN0cy5zaApvbGQgbW9kZSAxMDA2NDQKbmV3IG1vZGUgMTAwNzU1CmluZGV4IGVlNzJj
MzE2Nzc1ZC4uYTdjNmQ5MDA0OTg3Ci0tLSBhL3Rlc3RzL3NodW5pdDIvdGVzdHMuc2gKKysrIGIv
dGVzdHMvc2h1bml0Mi90ZXN0cy5zaApAQCAtNiw3ICs2LDcgQEAgQ0hBTkdFU19ESVI9Ii90bXAv
LnVjaSIKIFRNUF9ESVI9JHtURVNUU19ESVJ9Ii90bXAiCiBGVUxMX1NVSVRFPSR7VEVTVFNfRElS
fSIvZnVsbF9zdWl0ZS5zaCIKIAotVUNJX0JJTj0iLi4vdWNpIgorVUNJX0JJTj0ke1VDSV9CSU46
LSIuLi91Y2kifQogWyAteCAkVUNJX0JJTiBdIHx8IHsKIAllY2hvICJ1Y2kgaXMgbm90IHByZXNl
bnQuIiA+JjIKIAlyZXR1cm4gMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
