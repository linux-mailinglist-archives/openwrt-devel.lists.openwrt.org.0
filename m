Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ED4D3B6C
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VE8gFHFKd433fZaiIvoqa0ySCp1iX7gABsn3Kir+21c=; b=dM3ecM6PMi8tzF
	DnQSNsDcyyAcSNplLMTUg3UxaY+qtgoE4zYg6IxbCnATTTwWuVBLdqHCJir7aQhEX936UU0oIuC/V
	EsqrT4iaYoiXWaxxfVotuke+R0ShhmYJK/qGMXqEBiGOKJplgblr/XQtqDMMIwNN6IXTVcLfpIMXj
	JfqbUSiSclABYCzJK1e3mXndfPw284fAPDLs3I/2VIhJCPIMdZOTxSNvmKwRgml/Iam8NVUsCiobM
	e4FYND10QRfaHdkFTd9uFsJNclAFZCsKYJ9dJVHk8+7yjZERC1C20H7xbo/ibWGdK3fNixVUnnfpL
	NmuJsquXpe8YRULwV0KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqVG-0003h5-VV; Fri, 11 Oct 2019 08:42:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqVA-0003fM-73
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:42:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0872D3FEA;
 Fri, 11 Oct 2019 10:42:17 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f7743050;
 Fri, 11 Oct 2019 10:42:07 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:42:00 +0200
Message-Id: <20191011084204.19790-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014220_409076_1BD6184B 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH urngd 0/4] sync with upstream,
 fixes and GitLab CI
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

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBzeW5jIGppdHRlcmVudHJvcHktcm5nZCB3aXRoIHVwc3Ry
ZWFtIHJlbGVhc2UgdjEuMS4wIChwbHVzCm9uZSBhZGRpdGlvbmFsIGNsYW5nIGNvbXBpbGUgZml4
IHVuY292ZXJlZCBieSBDSSkgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIENJCnRlc3RpbmcgYW5k
IGZpeGVzIHRoZSBpc3N1ZXMgdW5jb3ZlcmVkIGJ5IHRoaXMgbmV3IENJIHRlc3RzLiBUaG9zZSBD
SSB0ZXN0cwphcmUgY3VycmVudGx5IHVzaW5nIG15IHByb29mLW9mLWNvbmNlcHQgb3BlbndydC1j
aVsxXSBpbiBvcmRlciB0bzoKCiAqIGltcHJvdmUgdGhlIHF1YWxpdHkgb2YgdGhlIGNvZGViYXNl
IGluIHZhcmlvdXMgYXJlYXMKICogZGVjcmVhc2UgY29kZSByZXZpZXcgdGltZSBhbmQgaGVscCBt
ZXJnaW5nIGNvbnRyaWJ1dGlvbnMgZmFzdGVyCiAqIGdldCBhdXRvbWFnaWMgZmVlZGJhY2sgbG9v
cCBvbiB2YXJpb3VzIHBsYXRmb3JtcyBhbmQgdG9vbHMKICAgLSBvdXQgb2YgdHJlZSBidWlsZCB3
aXRoIE9wZW5XcnQgU0RLIG9uIGZvbGxvd2luZyB0YXJnZXRzOgogICAgICogYXRoNzktZ2VuZXJp
YwogICAgICogaW14Ni1nZW5lcmljCiAgICAgKiBtYWx0YS1iZQogICAgICogbXZlYnUtY29ydGV4
YTUzCiAgIC0gb3V0IG9mIHRyZWUgbmF0aXZlIGJ1aWxkIG9uIHg4Ni82NCB3aXRoIEdDQyAodmVy
c2lvbnMgNywgOCwgOSkgYW5kIENsYW5nIDkKICAgLSBvdXQgb2YgdHJlZSBuYXRpdmUgeDg2LzY0
IHN0YXRpYyBjb2RlIGFuYWx5c2lzIHdpdGggY3BwY2hlY2sgYW5kCiAgICAgc2Nhbi1idWlsZCBm
cm9tIENsYW5nIDkKCjEuIGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LWNpLwoKQ2hl
ZXJzLAoKUGV0cgoKUGV0ciDFoHRldGlhciAoNCk6CiAgQWRkIGluaXRpYWwgR2l0TGFiIENJIHN1
cHBvcnQKICBGaXggd3JvbmcgdHlwZXMgaW4gZm9ybWF0IHN0cmluZ3MgdXNlZCBpbiBkZWJ1ZyBi
dWlsZAogIGppdHRlcmVudHJvcHktcm5nZDogdXBkYXRlIHRvIHZlcnNpb24gdjEuMS4wICsgY2xh
bmcgY29tcGlsZSBmaXgKICBUYWcgdmVyc2lvbiAxLjAuMQoKIC5naXRsYWItY2kueW1sICAgICAg
ICAgICAgICB8IDcgKysrKysrKwogM3JkcGFydHkvaml0dGVyZW50cm9weS1ybmdkIHwgMiArLQog
Q01ha2VMaXN0cy50eHQgICAgICAgICAgICAgIHwgMiArLQogdXJuZ2QuYyAgICAgICAgICAgICAg
ICAgICAgIHwgNCArKy0tCiA0IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgLmdpdGxhYi1jaS55bWwKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
