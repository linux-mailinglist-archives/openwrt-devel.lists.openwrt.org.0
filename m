Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432218895E
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 16:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YBX1F31+hMIPuBvzS6d/5pqn92KrPJwq0Ni9XA7XesQ=; b=WI1vfRtQCDKbwa
	8rAYE9bPlebem8y7kxNQC11XpYMYaJffqtOz2LYPNc7S4QyM1Frf3J7uC9omSvPt0N2hIaKigaAcq
	b7XVC7oaLC0z6gqPFo7bJcrH95wvu6aHlc6fAubkxHI7W4QqiyAEHx6NjtC9phka5UvemJeZYM6Ax
	4WkoDDyf+11k15GFD2l32cS6asi2gR/FrRtm/2M9NvVgE/wcX3iKZ+E8D+0YwfzTqJBMaznESPtsK
	+8SMXlK1d2B43SIcffjttSVIeouDf94NnGYdp6qoJqPGDZz+6e2Wji1gl7R779dZA2lN2hcf1IF4E
	9+2dsjm4E+246gKPVdnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEPM-00076z-ET; Tue, 17 Mar 2020 15:45:32 +0000
Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEP5-0006HV-13
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 15:45:17 +0000
Received: from fbl-desktop.lan (unknown
 [IPv6:2a02:810d:98c0:4a00:ded:4285:9dd1:fe35])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: fabian@blaese.de)
 by mail.sgstbr.de (Postfix) with ESMTPSA id 80B512C680B;
 Tue, 17 Mar 2020 16:45:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
 t=1584459909; bh=+3xwTpKK6l+djJaPM81WbR4ECtglH+GVcVVux945Ehs=;
 h=From:To:Subject:Date:From;
 b=1MRaZJ86nxZQ9EiAEsXVnK+MLH5pbtAarTFVVkvMUMOo6OPYCgcfZ1UlkUOnY7PP0
 OebjhdBpes/9BeQSbvTp1uuYkbni1h5aE7CpB0puWFsjpcmtoUA664Yv7ALVbGaWT7
 ZE/yxnPtF9Urk8HD/rA8gq6HNPCX663xwJpIVjEvZTUUgdKAa/3soHzdpHHPp10akj
 TZnl02GOQwLoOUSnFrNi+qbHm4GM4sIjBWiPtuAmeKvZIlCHQ4PaFsm22dMOWYwS24
 PHzgs1jRNT4XzRW6lSrTLeLm1UdbJsQ6EsDhgmEJSqFuLUyNn/4GItGseO6r4buQNl
 wHY1KbLFaL3IA==
From: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 16:44:55 +0100
Message-Id: <20200317154455.751682-1-fabian@blaese.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_084515_799161_7CB9F84F 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] session: deny access if password login is
 disabled
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
Cc: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIHNwZWNpYWwgY2hhcmFjdGVycyAnIScgYW5kICcqJyBpbiAvZXRjL3NoYWRvdyBhcmUKdXNl
ZCB0byBkaXNhYmxlIHBhc3N3b3JkIGxvZ2luIGZvciBhIHNwZWNpZmljIGFjY291bnQuCgpUaGUg
Y2hhcmFjdGVyICd4JyBoYXMgbm8gc3BlY2lhbCBtZWFuaW5nLCBidXQgc2hvdWxkIG5vdApiZSBp
bnRlcnByZXRlZCBhcyBhbiBlbXB0eSBwYXNzd29yZC4KCkhvd2V2ZXIsIHJwY2QgZGlkIHRyZWF0
IHRoZXNlIHNwZWNpYWwgY2hhcmFjdGVycyBsaWtlIG5vCnBhc3N3b3JkIHdhcyBzZXQsIHdoaWNo
IGFsbG93cyBhY2Nlc3MgZXZlbiB0aG91Z2ggdGhlIGFjY291bnQKaXMgZGlzYWJsZWQuCgpCeSBy
ZW1vdmluZyB0aGUgYWRkaXRpb25hbCBjaGVja3MgZm9yIHRoZXNlIGNoYXJhY3RlcnMsIHRoZQpl
bmNyeXB0ZWQgcGFzc3dvcmQgc3RyaW5nIGlzIHBhc3NlZCB0byBjcnlwdCwgd2hpY2ggcmV0dXJu
cyBOVUxMCmlmIHRoZSBzYWx0IGhhcyBhbiBpbnZhbGlkIGZvcm1hdCBhbmQgdGhlcmVmb3JlIGFj
Y2VzcyBpcyBkZW5pZWQuCgpGaXhlczogRlMjMjYzNAoKU2lnbmVkLW9mZi1ieTogRmFiaWFuIEJs
w6RzZSA8ZmFiaWFuQGJsYWVzZS5kZT4KLS0tCiBzZXNzaW9uLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXNzaW9u
LmMgYi9zZXNzaW9uLmMKaW5kZXggMTNhMmVmMy4uOTA4ZTI5OCAxMDA2NDQKLS0tIGEvc2Vzc2lv
bi5jCisrKyBiL3Nlc3Npb24uYwpAQCAtNzk1LDcgKzc5NSw3IEBAIHJwY19sb2dpbl90ZXN0X3Bh
c3N3b3JkKGNvbnN0IGNoYXIgKmhhc2gsIGNvbnN0IGNoYXIgKnBhc3N3b3JkKQogCWNoYXIgKmNy
eXB0X2hhc2g7CiAKIAkvKiBwYXNzd29yZCBpcyBub3Qgc2V0ICovCi0JaWYgKCFoYXNoIHx8ICEq
aGFzaCB8fCAhc3RyY21wKGhhc2gsICIhIikgfHwgIXN0cmNtcChoYXNoLCAieCIpKQorCWlmICgh
aGFzaCB8fCAhKmhhc2gpCiAJewogCQlyZXR1cm4gdHJ1ZTsKIAl9Ci0tIAoyLjI1LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
