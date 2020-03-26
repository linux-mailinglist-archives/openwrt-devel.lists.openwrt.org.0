Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB77193ED6
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 13:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fkeRM4ITvma2Xdv5FnKkthMz+jgl+QTljvbz3Hn6r6o=; b=b3qZuJvMKJ+26h
	cuP6mpB83DaQAjhYvmuNLsbb5TbPH7+Mo9TobUGuHKju9LpzzPtSCUNEcKCao6BbxsHwVSuwmfnSU
	Y6DJAylvZjCG4c4/8qhglb6m+cc2NpK5ilIvETX/gmLtJjbb+l2L8U1npv+4cBccow7pcf7aK64AO
	x7GXFw5rX6NMbU0uSB5ka4XF9mQT4OPRkQrfPnh13k2cOiOUU2VY6PoDaoXfUEn49+LpwIB71p44N
	Yo4fujyURK0jB+OtHMxHd318cjdWPVW5kcXFCeKRhjgnuTBHA9iPKxI4bMxiSBTrlTZYCc966mO1s
	uwscz93PXrESe1gUtbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRbp-0008Fu-Oe; Thu, 26 Mar 2020 12:27:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRbj-0008FM-NZ
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 12:27:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C4E694387;
 Thu, 26 Mar 2020 13:27:26 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 268a2709;
 Thu, 26 Mar 2020 13:27:12 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 13:27:23 +0100
Message-Id: <20200326122723.11926-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_052735_916919_9BA0DD8B 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] sunxi: switch to 5.4 kernel
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Zoltan HERPAI <wigyori@uid0.hu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2VlbXMgdG8gYmUgd29ya2luZyBmaW5lIG9uIG15IGE2NC1vbGludXhpbm8sIGl0J3MgOTkuOSUg
dXBzdHJlYW0gc3R1ZmYKYW55d2F5LiBMZXRzIHN0YXJ0IHdpZGVyIHVzZXJiYXNlIHRlc3Rpbmcu
CgpDYzogWm9sdGFuIEhFUlBBSSA8d2lneW9yaUB1aWQwLmh1PgpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC9zdW54aS9NYWtlZmls
ZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9zdW54aS9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9z
dW54aS9NYWtlZmlsZQppbmRleCBmMTBiZjU3ZGVlZDIuLjM3YjhhMzBlMjI3MyAxMDA2NDQKLS0t
IGEvdGFyZ2V0L2xpbnV4L3N1bnhpL01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9zdW54aS9N
YWtlZmlsZQpAQCAtMTMsNyArMTMsNyBAQCBCT0FSRE5BTUU6PUFsbHdpbm5lciBBMXgvQTIwL0Ez
eC9SNDAKIEZFQVRVUkVTOj1mcHUgdXNiIGV4dDQgZGlzcGxheSBydGMgc3F1YXNoZnMKIFNVQlRB
UkdFVFM6PWNvcnRleGE4IGNvcnRleGE3IGNvcnRleGE1MwogCi1LRVJORUxfUEFUQ0hWRVI6PTQu
MTkKK0tFUk5FTF9QQVRDSFZFUjo9NS40CiBLRVJORUxfVEVTVElOR19QQVRDSFZFUjo9NS40CiBL
RVJORUxOQU1FOj16SW1hZ2UgZHRicwogCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
