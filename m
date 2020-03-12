Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D750F1831AE
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 14:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O0FxxusXxvrSe+ebl90SS298UqdjgnAwLeoExmV5xQ=; b=oO8g0p+/NTmLvd
	uk1Tw73q0Ro+XzPqxO7imRbB9D2apupw6x3w7oIuuh9LCBoP63wihvibtJ+IuMb+n+b9m17A38Zmu
	HX49MfCiSxMq0DNe0HYZWcFYkWmK1Rr9sTNWt5HmeWRUDDCblZOIyCd1vsdS4SmpE0E8YLR8TnT0r
	7RsGn7AgH6g80mHdax/8EZxXRhuSRiNgPCC8OnIXxAbJpl1TG2ccaKBvtnpDAXNHgOpF8UkImTev9
	IJ4dH4J9uj3yS9nNkBm7qQifc4gn9s0GzBTSOnEup3i2YtHr2O7Zkg1quAx/+1vEUitar7xO7MvUM
	vslEaRoTeqS+3rjKj4lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCO0N-0000Fy-0f; Thu, 12 Mar 2020 13:36:07 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNzy-0008PF-8s
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 13:35:43 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D882242812;
 Thu, 12 Mar 2020 13:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584020142; bh=S1JBy9ONqDvsZmNi0HgRP67WZ3ZXVXhJ1ndM5hksdYQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qe2chmUi/VWBo+FMxcfsQjcd9vb+kHNTmvUA+7YUPz1fOl35HF8fLfXNGvldMn4Jf
 a87iv6zOLCUetkd6FHgnB+qTJD69ZvrCg6RW0wh7RDf5w5KRkvTyjbU/tT/ThljXEk
 /4gBO8F4NwWmxVx1b1ye63jgehEPPuRwiIca+77OGIBvomaCYZFN9ykt5TgT6qgtY2
 kGzgecjHw8KbbsyFcYKeFURLcSms4IvkEJiubNRpdvZVhSPO3mgH1LuEORxaB8QZlx
 izeq/6ctoPMRjO/jKDFYo4acFnA5eztdYJwh1ebJeU3oyO4zPE5xHtLb5/xLdq9phg
 Ahlg34BtVYOTA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id BE7C0A005C;
 Thu, 12 Mar 2020 13:35:38 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Mar 2020 16:35:00 +0300
Message-Id: <20200312133501.17939-5-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063542_332418_BB2211A4 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 4/5] archs38: remove ath9k-htc package
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogRXZnZW5peSBEaWRpbiA8RXZnZW5peS5EaWRpbkBzeW5vcHN5cy5jb20+
CkNjOiBBbGV4ZXkgQnJvZGtpbiA8YWJyb2RraW5Ac3lub3BzeXMuY29tPgpDYzogUGV0ciDFoHRl
dGlhciA8eW5lenpAdHJ1ZS5jej4KQ2M6IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRl
PgpDYzogSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPgotLS0KIHRhcmdldC9saW51eC9h
cmNoczM4L2dlbmVyaWMvcHJvZmlsZXMvMDAtZGVmYXVsdC5tayB8IDMgKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L2FyY2hzMzgvZ2VuZXJpYy9wcm9maWxlcy8wMC1kZWZhdWx0Lm1rIGIvdGFyZ2V0L2xp
bnV4L2FyY2hzMzgvZ2VuZXJpYy9wcm9maWxlcy8wMC1kZWZhdWx0Lm1rCmluZGV4IGVjOWJiYmIx
OWYuLjZjMGYxYmMyOTEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hcmNoczM4L2dlbmVyaWMv
cHJvZmlsZXMvMDAtZGVmYXVsdC5taworKysgYi90YXJnZXQvbGludXgvYXJjaHMzOC9nZW5lcmlj
L3Byb2ZpbGVzLzAwLWRlZmF1bHQubWsKQEAgLTMsMTEgKzMsMTAgQEAKICMKICMgVGhpcyBpcyBm
cmVlIHNvZnR3YXJlLCBsaWNlbnNlZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vu
c2UgdjIuCiAjIFNlZSAvTElDRU5TRSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KLSMKIAogZGVmaW5l
IFByb2ZpbGUvRGVmYXVsdAogCU5BTUU6PURlZmF1bHQgUHJvZmlsZSAoYWxsIGRyaXZlcnMpCi0J
UEFDS0FHRVM6PSBrbW9kLXVzYjIga21vZC1hdGg5ay1odGMgd3BhZC1iYXNpYworCVBBQ0tBR0VT
Oj0ga21vZC11c2IyIHdwYWQtYmFzaWMKIGVuZGVmCiAKIGRlZmluZSBQcm9maWxlL0RlZmF1bHQv
RGVzY3JpcHRpb24KLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
