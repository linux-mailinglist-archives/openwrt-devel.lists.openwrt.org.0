Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D993EF215
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS09xzz7WvQXxCzl4gyKlsnGnDnQP2Psaz3UUWDPwZY=; b=VUCp/Jthq1sQ6c
	oFGDKNX8KiuMwP2Rf2mKoc8xRWm/mwKYasS8WFAw1xdfaN/Zh6rBQ94VpCWPlE8HoTrgDROm/rVcq
	rduLYbs08rZcejonR1md76hCxgsKL3syIT/SvqiG+d0EZEGj+BpOOj0/suGPC6hlTxi0qzTevorbd
	KcaMkhmH8ezqe4+UrmpvvPepvlmvhC4nAo5OEEfKtgSjOsez4FDd0GXCnF+SxbFi9AFCVcvfl+4Qy
	7JuyLSkndqp/64aZPadO8aMsWqKtJmDQhvDQrl2VsinES0yZXbf+tF2dvPozH8w4nT1clXHs9lrU2
	Uzj2WzN0mGNweD3DxbdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmrm-0001EF-R0; Tue, 05 Nov 2019 00:38:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqP-00086t-4N
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 788764D83;
 Tue,  5 Nov 2019 01:37:10 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f75cdefc;
 Tue, 5 Nov 2019 01:37:00 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:46 +0100
Message-Id: <20191105003657.16540-8-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163713_346458_07AE8EA8 
X-CRM114-Status: UNSURE (   6.86  )
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
Subject: [OpenWrt-Devel] [PATCH uci 07/18] cmake: enable extra compiler
 checks
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

TGV0J3MgZW5mb3JjZSBhZGRpdGlvbmFsIGF1dG9tYXRpYyBjaGVja3MgZW5mb3JjZWQgYnkgdGhl
IGNvbXBpbGVyIGluCm9yZGVyIHRvIGNhdGNoIHBvc3NpYmxlIGVycm9ycyBkdXJpbmcgY29tcGls
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IENNYWtlTGlzdHMudHh0IHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9DTWFrZUxpc3RzLnR4dCBiL0NNYWtlTGlzdHMu
dHh0CmluZGV4IDBiYmQzYjIwNDZlYy4uOTJhZGY0YTQ3MTIxIDEwMDY0NAotLS0gYS9DTWFrZUxp
c3RzLnR4dAorKysgYi9DTWFrZUxpc3RzLnR4dApAQCAtMyw3ICszLDggQEAgY21ha2VfbWluaW11
bV9yZXF1aXJlZChWRVJTSU9OIDIuNikKIFBST0pFQ1QodWNpIEMpCiAKIFNFVChDTUFLRV9TSEFS
RURfTElCUkFSWV9MSU5LX0NfRkxBR1MgIiIpCi1BRERfREVGSU5JVElPTlMoLU9zIC1XYWxsIC1X
ZXJyb3IgLS1zdGQ9Z251OTkgLWczIC1JLiAtRFVDSV9QUkVGSVg9IiR7Q01BS0VfSU5TVEFMTF9Q
UkVGSVh9IikKK0FERF9ERUZJTklUSU9OUygtT3MgLVdhbGwgLVdlcnJvciAtV2V4dHJhIC0tc3Rk
PWdudTk5IC1nMyAtSS4gLURVQ0lfUFJFRklYPSIke0NNQUtFX0lOU1RBTExfUFJFRklYfSIpCitB
RERfREVGSU5JVElPTlMoLVduby11bnVzZWQtcGFyYW1ldGVyKQogCiBPUFRJT04oVUNJX0RFQlVH
ICJkZWJ1Z2dpbmcgc3VwcG9ydCIgT0ZGKQogT1BUSU9OKFVDSV9ERUJVR19UWVBFQ0FTVCAidHlw
ZWNhc3QgZGVidWdnaW5nIHN1cHBvcnQiIE9GRikKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
